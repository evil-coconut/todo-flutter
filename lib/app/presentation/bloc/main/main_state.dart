part of 'main_bloc.dart';

@freezed
class MainState with _$MainState {
  const factory MainState({
    @Default(MainNavigationType.tasks) MainNavigationType corePage,
    @Default(false) bool showAddListPanel,
    MainTasksListData? tasks,
    int? error,
  }) = _MainState;

  factory MainState.initial() => const MainState();
}
