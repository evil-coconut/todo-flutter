import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:todo/app/domain/entities/main/main_tasks_list_data.dart';
import 'package:todo/app/presentation/page/main_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(
      page: MainRoute.page,
      initial: true
    ),
  ];
}