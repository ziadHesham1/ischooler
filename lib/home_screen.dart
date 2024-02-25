import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'common/common_features/widgets/buttons/educonnect_button_export.dart';
import 'common/common_features/widgets/educonnect_screen.dart';
import 'common/educonnect_constants.dart';
import 'common/style/educonnect_colors.dart';
import 'features/profile/students/data/models/student_model.dart';
import 'features/profile/students/logic/cubit/student_cubit.dart';
import 'home_overview_widget.dart';
import 'home_shortcut_button.dart';

class HomeScreen extends StatelessWidget {
  final StudentModel studentData;
  const HomeScreen({super.key, required this.studentData});

  @override
  Widget build(BuildContext context) {
    return IschoolerScreen(
        onRefresh: () => context
            .read<StudentCubit>()
            .getItem(id: '9ad3e27a-0815-4959-8c6d-a35c2d774be7'),
        appBar: AppBar(
          backgroundColor: IschoolerColors.blue,
          foregroundColor: IschoolerColors.white,
          title: Text(
            IschoolerConstants.localization().home,
            style: const TextStyle(
              fontSize: 18,
            ),
          ),
          centerTitle: true,
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: 20.0,
          // vertical: 24.0,
        ),
        body: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HomeOverviewWidget(studentData: studentData),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                HomeShortcutButton(
                  title: 'الجدول الزمني',
                  icon:
                      Icon(Icons.calendar_month_outlined, color: Colors.white),
                ),
                HomeShortcutButton(
                  title: 'الواجبات',
                  icon:
                      Icon(Icons.calendar_month_outlined, color: Colors.white),
                ),
                HomeShortcutButton(
                  title: 'جدول الامتحانات',
                  icon:
                      Icon(Icons.calendar_month_outlined, color: Colors.white),
                ),
                HomeShortcutButton(
                  title: 'timetable',
                  icon:
                      Icon(Icons.calendar_month_outlined, color: Colors.white),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Text(
              'Updates',
              style: TextStyle(fontSize: 18),
            ),
            Container(
              // alignment: Alignment.bottomCenter,
              height: 45.h,
              // width: 45.h,
              margin: const EdgeInsets.symmetric(
                // horizontal: 20.0,
                vertical: 8.0,
              ),
              decoration: BoxDecoration(
                color: IschoolerColors.blue.withOpacity(0.2),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.0),
                      child: Icon(
                        Icons.calendar_month_outlined,
                        // color: Colors.white,
                      ),
                    ),
                    const Text(
                      'Homework updated',
                      style: TextStyle(fontSize: 18),
                    ),
                    const Spacer(),
                    IschoolerButton(
                      button: IschoolerTextButton(
                        onPressed: () {},
                        textButton: 'Check Now >',
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
