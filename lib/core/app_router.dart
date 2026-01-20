import 'package:auto_route/auto_route.dart';
import 'package:todo/app/presentation/page/screensaver_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: ScreensaverRoute.page, initial: true),
    // CustomRoute(
    //   path: '/main',
    //   page: MainRoute.page,
    //   transitionsBuilder: TransitionsBuilders.fadeIn,
    // ),
  ];
}