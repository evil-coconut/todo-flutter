import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:todo/core/resource/colors.dart';
import 'package:todo/core/resource/images.dart';
import 'package:todo/core/resource/strings.dart';
import 'package:todo/core/resource/text_styles.dart';

class AddListButton extends StatelessWidget {
  const AddListButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
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
