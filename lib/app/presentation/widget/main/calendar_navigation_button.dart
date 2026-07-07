import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:todo/core/resource/colors.dart';
import 'package:todo/core/resource/images.dart';
import 'package:todo/core/resource/strings.dart';
import 'package:todo/core/resource/text_styles.dart';

class CalendarNavigationButton extends StatelessWidget {
  final int scheduledTasks;

  const CalendarNavigationButton({
    required this.scheduledTasks,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      decoration: const BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.all(Radius.circular(4))
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                AppStrings.calendar,
                style: TextStyles.regular18(AppColors.black)
              ),
              Text(
                AppStrings.planned + scheduledTasks.toString(),
                style: TextStyles.regular14(AppColors.gray)
              ),
            ],
          ),
          SvgPicture.asset(AppImages.arrow)
        ],
      ),
    );
  }
}
