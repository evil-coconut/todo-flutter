import 'package:get_it/get_it.dart';

final appIn = GetIt.instance;

Future<void> initDI() async {
  _initBlocAuth();

  _initRepoAuth();

  _initSourceUser();

  _initCore();
  await _initExternal();
}

//bloc
void _initBlocAuth() {}

//repo
void _initRepoAuth() {}

//source
void _initSourceUser() {}

void _initCore() {}

Future<void> _initExternal() async {
  //TODO: здесь добавляются заранее подгружаемые пакеты(FlutterSecureStorage, Client..)
}