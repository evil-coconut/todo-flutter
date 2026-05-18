import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:todo/app/domain/entities/main/main_tasks_list_data.dart';
import 'package:todo/core/resource/colors.dart';

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
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Center(
        child: Column(
          children: [
            Text(widget.tasks?.scheduleTasksCalendar.toString() ?? ''),
            Text(widget.tasks?.mainLists.toString() ?? ''),
          ],
        ),
      ),
    );
  }
}
