import 'package:get_it/get_it.dart';
import 'package:todo/app/presentation/bloc/main/main_bloc.dart';

final appIn = GetIt.instance;

Future<void> initDI() async {
  _initBlocMain();

  _initRepoAuth();

  _initSourceUser();

  _initCore();
  await _initExternal();
}

//bloc
void _initBlocMain() {
  appIn.registerFactory(() => MainBloc());
}

//repo
void _initRepoAuth() {}

//source
void _initSourceUser() {}

void _initCore() {}

Future<void> _initExternal() async {
  //TODO: здесь добавляются заранее подгружаемые пакеты(FlutterSecureStorage, Client..)
}