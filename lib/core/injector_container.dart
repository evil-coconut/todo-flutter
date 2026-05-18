import 'package:get_it/get_it.dart';
import 'package:todo/app/presentation/bloc/screensaver/screensaver_bloc.dart';

final appIn = GetIt.instance;

Future<void> initDI() async {
  _initBlocScreensaver();

  _initRepoAuth();

  _initSourceUser();

  _initCore();
  await _initExternal();
}

//bloc
void _initBlocScreensaver() {
  appIn.registerFactory(() => ScreensaverBloc());
}

//repo
void _initRepoAuth() {}

//source
void _initSourceUser() {}

void _initCore() {}

Future<void> _initExternal() async {
  //TODO: здесь добавляются заранее подгружаемые пакеты(FlutterSecureStorage, Client..)
}