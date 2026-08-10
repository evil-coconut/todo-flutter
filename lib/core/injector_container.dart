import 'package:get_it/get_it.dart';
import 'package:todo/app/data/data_sources/task_data_local_source.dart';
import 'package:todo/app/data/repositories/task_repository.dart';
import 'package:todo/app/domain/repositories/task_repository.dart';
import 'package:todo/app/presentation/bloc/main/main_bloc.dart';
import 'package:todo/core/database/app_database.dart';

final appIn = GetIt.instance;

Future<void> initDI() async {
  _initBlocMain();

  _initRepoTask();

  _initSourceTask();

  _initCore();
  await _initExternal();
}

//bloc
void _initBlocMain() {
  appIn.registerFactory(() => MainBloc(taskRepository: appIn()));
}

//repo
void _initRepoTask() {
  appIn.registerLazySingleton<TaskRepository>(
    () => TaskRepositoryImpl(local: appIn())
  );
}

//source
void _initSourceTask() {
  appIn.registerLazySingleton<TaskDataLocalSource>(
    () => TaskDataLocalSourceImpl(appDatabase: appIn()),
  );
}

void _initCore() {}

Future<void> _initExternal() async {
  //TODO: здесь добавляются заранее подгружаемые пакеты(FlutterSecureStorage, Client..)
  appIn.registerLazySingleton(() => AppDatabase(openConnection()));
}