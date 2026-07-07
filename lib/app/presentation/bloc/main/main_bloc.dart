import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todo/app/domain/entities/main/main_tasks_list_data.dart';
import 'package:todo/core/enum/main_navigation_type.dart';

part 'main_event.dart';
part 'main_state.dart';
part 'main_bloc.freezed.dart';

class MainBloc extends Bloc<MainEvent, MainState> {
  MainBloc() : super(MainState.initial()) {
    on<MainEvent>((event, emit) {
      event.when<FutureOr<void>>(
        getTasks: () {},
        navigationTo: (e) => emit(state.copyWith(corePage: e)),
      );
    });
  }
}
