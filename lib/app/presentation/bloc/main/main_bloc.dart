import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todo/app/domain/entities/main/list_template_data.dart';
import 'package:todo/app/domain/repositories/task_repository.dart';
import 'package:todo/core/enum/main_navigation_type.dart';

part 'main_event.dart';
part 'main_state.dart';
part 'main_bloc.freezed.dart';

class MainBloc extends Bloc<MainEvent, MainState> {
  final TaskRepository taskRepository;

  MainBloc({
    required this.taskRepository
  }) : super(MainState.initial()) {
    on<MainEvent>((event, emit) async {
      await event.when<FutureOr<void>>(
        getTasks: () => _getListTasks(emit),
        navigationTo: (e) => emit(state.copyWith(corePage: e)),
        showAddListPanel: (e) => emit(state.copyWith(showAddListPanel: e)),
        addNewList: (title, color) => _addNewList(title, color, emit)
      );
    });
  }

  Future<void> _getListTasks(Emitter<MainState> emit) async {
    emit(state.copyWith(tasks: null));
    var listTasks = await taskRepository.getListsTasks();
    emit(state.copyWith(tasks: listTasks));
  }

  Future<void> _addNewList(String title, String color, Emitter<MainState> emit) async {
    emit(state.copyWith(tasks: null));
    await taskRepository.createListTasks(ListTemplateData(id: 0, title: title, color: color, countTasks: 0));
    var listTasks = await taskRepository.getListsTasks();
    print('main_bloc $listTasks');
    emit(state.copyWith(tasks: listTasks));
  }
}
