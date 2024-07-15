import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:softbd_task_project/src/base/base.dart';
import 'package:softbd_task_project/src/components/custom_text_widget.dart';
import 'package:softbd_task_project/src/components/space_vertical_widget.dart';
import 'package:softbd_task_project/src/config/utils/helper.dart';
import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:softbd_task_project/src/pages/widgets/date_selector_widget.dart';

import '../components/custom_button_widget.dart';
import '../config/router/app_router.dart';
import '../config/utils/app_colors.dart';
import 'widgets/today_schedule_widget.dart';

class TimeLinePage extends StatelessWidget {
  TimeLinePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
          child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SpaceVerticalWidget(height: 40),
              //user section
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  KText(
                    text:
                        'আজ, ${DateFormat('d MMMM', 'bn').format(DateTime.now())}',
                    fontWeight: FontWeight.w700,
                    fontSize: mediaQueryFontSize(16),
                  ),
                  CustomButton(
                    width: mediaQueryWidth(110.0), // Width (Hug 100px)
                    height: mediaQueryHeight(30.0), // Height (Hug 29px)

                    title: 'নতুন যোগ করুন',
                    borderRadius: 5.0,
                    onTap: () {
                      Get.toNamed(AppRouter.addNewElementPage);
                    },
                  ),
                ],
              ),
              SpaceVerticalWidget(height: 30),
              DateSelectorWidget(
                dates: Base.settingsC.dates,
              ),
              SpaceVerticalWidget(height: 30),
              const TodayScheduleWidget()
            ],
          ),
        ),
      )),
    );
  }
}
