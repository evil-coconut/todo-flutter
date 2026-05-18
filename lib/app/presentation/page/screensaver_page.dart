import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:todo/app/presentation/bloc/screensaver/screensaver_bloc.dart';
import 'package:todo/core/app_router.dart';
import 'package:todo/core/injector_container.dart';
import 'package:todo/core/resource/colors.dart';
import 'package:todo/core/resource/images.dart';

@RoutePage()
class ScreensaverPage extends StatefulWidget {
  const ScreensaverPage({super.key});

  @override
  State<ScreensaverPage> createState() => _ScreensaverPageState();
}

class _ScreensaverPageState extends State<ScreensaverPage> {
  ScreensaverBloc? _bloc;

  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback((_) {
      _bloc?.add(const ScreensaverEvent.start());
    });
  }

  @override
  Widget build(BuildContext context) {
    _bloc ??= appIn<ScreensaverBloc>();
    return Scaffold(
      backgroundColor: AppColors.white,
      body: BlocProvider<ScreensaverBloc>(
        create: (_) => _bloc!,
        child: BlocListener<ScreensaverBloc, ScreensaverState>(
          listener: (context, state) {
            if(state.tasks != null) {
              context.replaceRoute(MainRoute());
            }
          },
          child: Center(
              child: SvgPicture.asset(AppImages.logo)
          ),
        ),
      ),
    );
  }
}
