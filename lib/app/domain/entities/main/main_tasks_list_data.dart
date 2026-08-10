import 'package:equatable/equatable.dart';
import 'package:todo/app/domain/entities/main/list_template_data.dart';

class MainTasksListData extends Equatable{
  final int scheduleTasksCalendar;
  final List<ListTemplateData> mainLists;

  const MainTasksListData({
    required this.scheduleTasksCalendar,
    required this.mainLists
  });

  @override
  List<Object?> get props => [scheduleTasksCalendar, mainLists];
}