import 'package:drift/drift.dart';
import 'package:todo/app/data/models/tasks/list_template_model.dart';
import 'package:todo/core/database/app_database.dart';

abstract class TaskDataLocalSource {
  Future<List<ListTemplateModel>> getListsTasks();

  Future<void> createListTasks(ListTemplateModel data);

  Future<void> editListTasks(ListTemplateModel data);

  Future<void> deleteListTasks(ListTemplateModel data);
}

class TaskDataLocalSourceImpl implements TaskDataLocalSource {
  final AppDatabase appDatabase;

  TaskDataLocalSourceImpl({
    required this.appDatabase
  });

  @override
  Future<void> createListTasks(ListTemplateModel data) async {
    await appDatabase.insertListTasks(
      ListTasksCompanion(
        title: Value(data.title),
        color: Value(data.color),
        countTasks: Value(data.countTasks)
      )
    );
  }

  @override
  Future<void> deleteListTasks(ListTemplateModel data) async {
    await appDatabase.deleteListTasks(data.id);
  }

  @override
  Future<void> editListTasks(ListTemplateModel data) async {
    await appDatabase.updateListTasks(
      ListTasksCompanion(
        title: Value(data.title),
        color: Value(data.color),
        countTasks: Value(data.countTasks)
      )
    );
  }

  @override
  Future<List<ListTemplateModel>> getListsTasks() async {
    return (await appDatabase.getListTasks()).map((e) =>
      ListTemplateModel(
        id: e.id,
        title: e.title,
        color: e.color,
        countTasks: e.countTasks
      )
    ).toList();
  }

}