import 'package:todo/core/enum/main_navigation_type.dart';
import 'package:todo/core/resource/images.dart';
import 'package:todo/core/resource/strings.dart';

extension MainNavigationExt on MainNavigationType{
  String getTitle() {
    switch(this) {
      case MainNavigationType.tasks:
        return AppStrings.tasks;
      case MainNavigationType.analytics:
        return AppStrings.analytics;
      case MainNavigationType.settings:
        return AppStrings.settings;
    }
  }

  String getImage() {
    switch(this) {
      case MainNavigationType.tasks:
        return AppImages.home;
      case MainNavigationType.analytics:
        return AppImages.analytics;
      case MainNavigationType.settings:
        return AppImages.settings;
    }
  }
}