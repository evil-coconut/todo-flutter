part of 'main_bloc.dart';

@freezed
class MainState with _$MainState {
  const factory MainState({
    @Default(MainNavigationType.tasks) corePage,
    MainTasksListData? tasks,
    int? error,
  }) = _MainState;

  factory MainState.initial() => const MainState();
}
