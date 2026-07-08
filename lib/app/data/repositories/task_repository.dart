import 'package:todo/app/data/data_sources/task_data_local_source.dart';
import 'package:todo/app/data/models/tasks/list_template_model.dart';
import 'package:todo/app/domain/entities/main/list_template_data.dart';
import 'package:todo/app/domain/repositories/task_repository.dart';

class TaskRepositoryImpl implements TaskRepository {
  final TaskDataLocalSource local;

  TaskRepositoryImpl({
    required this.local
  });

  @override
  Future<void> createListTasks(ListTemplateData data) async {
    await local.createListTasks(ListTemplateModel.toModel(data));
  }

  @override
  Future<void> deleteListTasks(ListTemplateData data) async {
    await local.deleteListTasks(ListTemplateModel.toModel(data));
  }

  @override
  Future<void> editListTasks(ListTemplateData data) async {
    await local.editListTasks(ListTemplateModel.toModel(data));
  }

  @override
  Future<List<ListTemplateData>> getListsTasks() async {
    var list = await local.getListsTasks();
    return list.map((e) => ListTemplateData.toData(e)).toList();
  }

}