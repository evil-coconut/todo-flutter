import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/app/domain/entities/main/main_tasks_list_data.dart';
import 'package:todo/app/presentation/bloc/main/main_bloc.dart';
import 'package:todo/app/presentation/widget/main/add_list_button.dart';
import 'package:todo/app/presentation/widget/main/calendar_navigation_button.dart';
import 'package:todo/app/presentation/widget/main/main_navigation_bar.dart';
import 'package:todo/core/injector_container.dart';
import 'package:todo/core/resource/colors.dart';
import 'package:todo/core/resource/strings.dart';
import 'package:todo/core/resource/text_styles.dart';

@RoutePage()
class MainPage extends StatefulWidget {
  final MainTasksListData? tasks;

  const MainPage({super.key, this.tasks});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => appIn<MainBloc>(),
      child: Scaffold(
        backgroundColor: AppColors.white,
        appBar: AppBar(
          title: Text(
            AppStrings.tasks,
            style: TextStyles.title(AppColors.black)
          ),
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(1.0),
            child: Container(
              color: AppColors.darkLight,
              height: 1.0,
            ),
          ),
          centerTitle: true,
          backgroundColor: AppColors.white,
          elevation: 0,
        ),
        body: DecoratedBox(
          decoration: const BoxDecoration(
            color: AppColors.light
          ),
          child: ListView(
            padding: const EdgeInsets.all(8),
            children: const [
              CalendarNavigationButton(scheduledTasks: 48,),
              SizedBox(height: 8,),
              AddListButton()
            ],
          ),
        ),
        bottomNavigationBar: const MainNavigationBar(),
      ),
    );
  }
}
