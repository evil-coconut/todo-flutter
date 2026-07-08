import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:todo/app/presentation/bloc/main/main_bloc.dart';
import 'package:todo/core/injector_container.dart';
import 'package:todo/core/resource/colors.dart';
import 'package:todo/core/resource/images.dart';
import 'package:todo/core/resource/strings.dart';
import 'package:todo/core/resource/text_styles.dart';

class AddListButton extends StatefulWidget {

  const AddListButton({super.key});

  @override
  State<AddListButton> createState() => _AddListButtonState();
}

class _AddListButtonState extends State<AddListButton> {
  TextEditingController controller = TextEditingController();
  FocusNode focusNode = FocusNode();

  int selectColor = 0;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        var result = await showModalBottomSheet(
          context: context,
          backgroundColor: AppColors.white,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(16.0)),
          ),
          builder: (BuildContext context) {
            return StatefulBuilder(
              builder: (BuildContext context, StateSetter setState) =>
                Container(
                height: 140 + MediaQuery.of(context).viewInsets.bottom,
                padding: const EdgeInsetsGeometry.symmetric(vertical: 8, horizontal: 16),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsetsGeometry.symmetric(vertical: 8,),
                      child: TextField(
                        controller: controller,
                        focusNode: focusNode,
                        style: TextStyles.main(AppColors.black),
                        cursorColor: AppColors.black,
                        cursorHeight: 15,
                        decoration: InputDecoration(
                          hintText: AppStrings.placeholderAddList,
                          hintStyle: TextStyles.main(AppColors.medium),
                          border: InputBorder.none,
                        ),
                        enableInteractiveSelection: false,
                        textInputAction: TextInputAction.done,
                        onSubmitted: (e) {
                          Navigator.pop(context, e);
                        },
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 60,
                            padding: const EdgeInsetsGeometry.symmetric(vertical: 8,),
                            child: ListView.separated(
                              scrollDirection: Axis.horizontal,
                              physics: const BouncingScrollPhysics(),
                              itemBuilder: (context, i) =>
                                InkWell(
                                  onTap: () {
                                    selectColor = i;
                                    setState(() {});
                                  },
                                  splashColor: Colors.transparent,
                                  child: Stack(
                                    children: [
                                      Container(
                                        width: 44,
                                        height: 44,
                                        padding: const EdgeInsets.all(6.0),
                                        child: DecoratedBox(
                                          decoration: BoxDecoration(
                                          color: AppColors.colors().elementAt(i),
                                          borderRadius: BorderRadius.circular(50)
                                          ),
                                        ),
                                      ),
                                      if(i == selectColor)
                                        Container(
                                          width: 44,
                                          height: 44,
                                          padding: const EdgeInsets.all(14.0),
                                          child: DecoratedBox(
                                            decoration: BoxDecoration(
                                                color: AppColors.white,
                                                borderRadius: BorderRadius.circular(50)
                                            ),
                                          ),
                                        ),
                                    ]
                                  ),
                                ),
                              separatorBuilder: (context, i) => const SizedBox(width: 4,height: 4,),
                              itemCount: AppColors.colors().length,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            );
          }
        );
        if(result != null) appIn<MainBloc>().add(MainEvent.addNewList(result, selectColor));
        controller.clear();
        selectColor = 0;
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        decoration: const BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.all(Radius.circular(4))
        ),
        child: Row(
          children: [
            SvgPicture.asset(AppImages.plus,),
            const SizedBox(width: 8,),
            Text(
              AppStrings.addList,
              style: TextStyles.main(AppColors.blue)
            ),
          ],
        ),
      ),
    );
  }
}
