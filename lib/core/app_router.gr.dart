// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

/// generated route for
/// [MainPage]
class MainRoute extends PageRouteInfo<MainRouteArgs> {
  MainRoute({Key? key, MainTasksListData? tasks, List<PageRouteInfo>? children})
    : super(
        MainRoute.name,
        args: MainRouteArgs(key: key, tasks: tasks),
        initialChildren: children,
      );

  static const String name = 'MainRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<MainRouteArgs>(
        orElse: () => const MainRouteArgs(),
      );
      return MainPage(key: args.key, tasks: args.tasks);
    },
  );
}

class MainRouteArgs {
  const MainRouteArgs({this.key, this.tasks});

  final Key? key;

  final MainTasksListData? tasks;

  @override
  String toString() {
    return 'MainRouteArgs{key: $key, tasks: $tasks}';
  }
}
