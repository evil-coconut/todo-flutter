import 'package:todo/app/domain/entities/main/list_template_data.dart';

class MainTasksListData {
  final int scheduleTasksCalendar;
  final List<ListTemplateData> mainLists;

  MainTasksListData({
    required this.scheduleTasksCalendar,
    required this.mainLists
  });
}