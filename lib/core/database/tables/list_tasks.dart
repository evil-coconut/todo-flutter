import 'package:drift/drift.dart';

class ListTasks extends Table {
  IntColumn get id => integer().autoIncrement()();

  TextColumn get title => text()();

  TextColumn get color => text()();

  IntColumn get countTasks => integer()();
}