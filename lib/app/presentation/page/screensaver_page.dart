import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:todo/core/resource/images.dart';

@RoutePage()
class ScreensaverPage extends StatelessWidget {
  const ScreensaverPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SvgPicture.asset(AppImages.logo),
    );
  }
}
