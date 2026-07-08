import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/app/presentation/bloc/main/main_bloc.dart';
import 'package:todo/core/enum/main_navigation_type.dart';
import 'package:todo/core/extension/main_navigation_ext.dart';
import 'package:todo/core/resource/colors.dart';
import 'package:todo/core/resource/text_styles.dart';

class MainNavigationBar extends StatefulWidget {
  const MainNavigationBar({super.key});

  @override
  State<MainNavigationBar> createState() => _MainNavigationBarState();
}

class _MainNavigationBarState extends State<MainNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8),
      decoration: const BoxDecoration(
        color: AppColors.white,
        border: Border(top: BorderSide(color: AppColors.darkLight))
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ...MainNavigationType.values.map((e) =>
            BlocBuilder<MainBloc, MainState>(
              builder: (context, state) =>
                SizedBox(
                  width: 57,
                  child: InkWell(
                    onTap: () => context.read<MainBloc>().add(MainEvent.navigationTo(e)),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SvgPicture.asset(
                          e.getImage(),
                          colorFilter: ColorFilter.mode(
                            state.corePage == e ?AppColors.dark : AppColors.gray,
                            BlendMode.srcIn),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          e.getTitle(),
                          style: TextStyles.medium10(state.corePage == e ?AppColors.dark : AppColors.gray)
                        ),
                      ],
                    ),
                  ),
                ),
            )
          )
        ],
      ),
    );
  }
}
