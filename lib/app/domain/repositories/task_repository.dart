import 'package:todo/app/domain/entities/main/list_template_data.dart';

abstract class TaskRepository {
  Future<List<ListTemplateData>> getListsTasks();

  Future<void> createListTasks(ListTemplateData data);

  Future<void> editListTasks(ListTemplateData data);

  Future<void> deleteListTasks(ListTemplateData data);
}