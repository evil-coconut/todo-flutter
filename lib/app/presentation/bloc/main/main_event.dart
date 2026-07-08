part of 'main_bloc.dart';

@freezed
class MainEvent with _$MainEvent {
  const factory MainEvent.getTasks() = _GetTasks;
  const factory MainEvent.navigationTo(MainNavigationType e) = _NavigationTo;
  const factory MainEvent.showAddListPanel(bool show) = _ShowAddListPanel;
  const factory MainEvent.addNewList(String title, int colorIndex) = _AddNewList;
}
