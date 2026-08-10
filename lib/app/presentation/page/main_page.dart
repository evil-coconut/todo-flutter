import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:todo/app/domain/entities/main/main_tasks_list_data.dart';
import 'package:todo/app/presentation/bloc/main/main_bloc.dart';
import 'package:todo/app/presentation/widget/main/add_list_button.dart';
import 'package:todo/app/presentation/widget/main/calendar_navigation_button.dart';
import 'package:todo/app/presentation/widget/main/main_navigation_bar.dart';
import 'package:todo/core/extension/color_ext.dart';
import 'package:todo/core/injector_container.dart';
import 'package:todo/core/resource/colors.dart';
import 'package:todo/core/resource/images.dart';
import 'package:todo/core/resource/strings.dart';
import 'package:todo/core/resource/text_styles.dart';

@RoutePage()
class MainPage extends StatefulWidget {
  final MainTasksListData? tasks;

  const MainPage({super.key, this.tasks});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> with SingleTickerProviderStateMixin {
  late final slide_controller = SlidableController(this);
  TextEditingController controller = TextEditingController();
  FocusNode focusNode = FocusNode();

  int selectColor = 0;
  MainBloc? bloc;

  @override
  void initState() {
    SchedulerBinding.instance.addPostFrameCallback((_) {
      bloc?.add(const MainEvent.getTasks());
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    bloc ??= appIn<MainBloc>();
    return BlocProvider(
      create: (_) => bloc!,
      child: BlocBuilder<MainBloc, MainState>(
        buildWhen: (prev, next) {
          print(next.tasks);
          return true;
        },
        builder: (context, state) {
          return Scaffold(
            backgroundColor: AppColors.white,
            appBar: AppBar(
              title: Text(
                AppStrings.tasks,
                style: TextStyles.title(AppColors.black)
              ),
              bottom: PreferredSize(
                preferredSize: const Size.fromHeight(1.0),
                child: Container(
                  color: AppColors.darkLight,
                  height: 1.0,
                ),
              ),
              centerTitle: true,
              backgroundColor: AppColors.white,
              elevation: 0,
            ),
            body: DecoratedBox(
              decoration: const BoxDecoration(
                color: AppColors.light
              ),
              child: ListView(
                shrinkWrap: true,
                padding: const EdgeInsets.all(8),
                children: [
                  const CalendarNavigationButton(scheduledTasks: 48,),
                  BlocBuilder<MainBloc, MainState>(
                    buildWhen: (prev, next) {
                      print(next.tasks);
                      return prev.tasks != next.tasks;
                    },
                    builder: (context, state) {
                      return Column(
                        children: state.tasks != null ?
                          state.tasks!.map((e) =>
                            Padding(
                              padding: const EdgeInsets.only(top: 8),
                              child: Slidable(
                                key: const ValueKey(0),
                                endActionPane: ActionPane(
                                  motion: ScrollMotion(),
                                  dismissible: DismissiblePane(onDismissed: () {}),
                                  children: [
                                    CustomSlidableAction(
                                      flex: 1,
                                      autoClose: true,
                                      onPressed: (i) async {
                                        controller.text = e.title;
                                        selectColor = 0;
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
                                        if(result != null) bloc!.add(MainEvent.addNewList(result, selectColor.toString()));
                                        controller.clear();
                                        selectColor = 0;
                                      },
                                      backgroundColor: AppColors.yellow,
                                      foregroundColor: Colors.white,
                                      borderRadius: BorderRadius.only(topRight: Radius.circular(4), bottomRight: Radius.circular(4)),
                                      child: SvgPicture.asset(AppImages.penEdit)
                                    ),
                                    CustomSlidableAction(
                                      flex: 1,
                                      autoClose: true,
                                      onPressed: (e) {},
                                      backgroundColor: AppColors.red,
                                      foregroundColor: Colors.white,
                                      borderRadius: BorderRadius.only(topRight: Radius.circular(4), bottomRight: Radius.circular(4)),
                                      child: SvgPicture.asset(AppImages.trash),
                                    ),
                                  ]
                                ),
                                child: InkWell(
                                  onTap: () {},
                                  child:  Container(
                                    width: MediaQuery.of(context).size.width,
                                    padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 16),
                                    decoration: const BoxDecoration(
                                      color: AppColors.white,
                                      borderRadius: BorderRadius.all(Radius.circular(4))
                                    ),
                                    child: Row(
                                      children: [
                                        Container(
                                          width: 12,
                                          height: 12,
                                          decoration: BoxDecoration(
                                            color: AppColors.colors().elementAt(int.parse(e.color)),
                                            borderRadius: BorderRadius.circular(50)
                                          )
                                        ),
                                        const SizedBox(width: 10,),
                                        Text(
                                          e.title,
                                          style: TextStyles.regular14(AppColors.black)
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ),
                            )
                          ).toList()
                        : []
                      );
                    },
                  ),
                  const SizedBox(height: 8,),
                  InkWell(
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
                      if(result != null) bloc!.add(MainEvent.addNewList(result, selectColor.toString()));
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
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height,)
                ],
              ),
            ),
            bottomNavigationBar: const MainNavigationBar(),
          );
        },
      ),
    );
  }
}
