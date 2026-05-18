part of 'screensaver_bloc.dart';

@freezed
class ScreensaverState with _$ScreensaverState {
  const factory ScreensaverState({
    MainTasksListData? tasks,
    int? error,
  }) = _ScreensaverState;

  factory ScreensaverState.initial() => const ScreensaverState();
}