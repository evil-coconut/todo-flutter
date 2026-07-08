import 'package:todo/app/domain/entities/main/list_template_data.dart';

class ListTemplateModel extends ListTemplateData {
  const ListTemplateModel({
    required super.id,
    required super.title,
    required super.color,
    required super.countTasks
  });

  factory ListTemplateModel.toModel(ListTemplateData data) =>
    ListTemplateModel(
      id: data.id,
      title: data.title,
      color: data.color,
      countTasks: data.countTasks
    );
}