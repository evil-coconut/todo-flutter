import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todo/app/domain/entities/main/main_tasks_list_data.dart';

part 'screensaver_event.dart';
part 'screensaver_state.dart';
part 'screensaver_bloc.freezed.dart';

class ScreensaverBloc extends Bloc<ScreensaverEvent, ScreensaverState> {
  ScreensaverBloc() : super(ScreensaverState.initial()) {
    on<ScreensaverEvent>((event, emit) async {
      await event.when<FutureOr<void>> (
        start: () async {
          await Future.delayed(const Duration(milliseconds: 300));
          emit(state.copyWith(tasks: MainTasksListData(scheduleTasksCalendar: 1, mainLists: [])));
        },
      );
    });
  }
}
