import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import 'package:todo/core/database/tables/list_tasks.dart';

part 'app_database.g.dart';

LazyDatabase openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'db.sqlite'));

    return NativeDatabase(file);
  });
}

@DriftDatabase(tables: [
  ListTasks
])

class AppDatabase extends _$AppDatabase {
  AppDatabase(super.e);

  @override
  int get schemaVersion => 1;

  //#region listTasks
  Future<List<ListTask>> getListTasks() async {
    return await select(listTasks).get();
  }

  Future<void> insertListTasks(ListTasksCompanion data) async {
    await into(listTasks).insert(data);
  }

  Future<void> updateListTasks(ListTasksCompanion data) async {
    await (update(listTasks)..where((tbl) => tbl.id.equals(data.id.value))).write(data);
  }

  Future<void> deleteListTasks(int id) async {
    await (delete(listTasks)..where((tbl) => tbl.id.equals(id))).go();
  }
  //#endregion
}