import 'package:equatable/equatable.dart';
import 'package:todo/app/data/models/tasks/list_template_model.dart';

class ListTemplateData extends Equatable {
  final int id;
  final String title;
  final String color;
  final int countTasks;

  const ListTemplateData({
    required this.id,
    required this.title,
    required this.color,
    required this.countTasks
  });

  factory ListTemplateData.toData(ListTemplateModel data) =>
    ListTemplateData(
      id: data.id,
      title: data.title,
      color: data.color,
      countTasks: data.countTasks
    );

  @override
  List<Object?> get props => [id, title, color, countTasks];
}