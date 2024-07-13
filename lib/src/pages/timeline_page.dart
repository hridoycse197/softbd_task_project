import 'package:flutter/material.dart';
import 'package:softbd_task_project/src/components/custom_text_widget.dart';
import 'package:softbd_task_project/src/components/space_vertical_widget.dart';
import 'package:softbd_task_project/src/config/utils/helper.dart';
import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:softbd_task_project/src/pages/widgets/date_selector_widget.dart';

import '../components/custom_button_widget.dart';
import '../components/gridview_element_widget.dart';
import '../config/utils/app_colors.dart';
import 'widgets/time_management_widget.dart';
import 'widgets/today_schedule_widget.dart';

class TimeLinePage extends StatefulWidget {
  const TimeLinePage({super.key});

  @override
  State<TimeLinePage> createState() => _TimeLinePageState();
}

class _TimeLinePageState extends State<TimeLinePage> {
  String _formattedDate = '';
  List<DateTime> dates = [];
  @override
  void initState() {
    super.initState();
    initializeDateFormatting().then((_) {
      setState(() {
        _formattedDate = DateFormat('d MMMM', 'bn').format(DateTime.now());
      });
    });
    dates =
        List.generate(15, (index) => DateTime.now().add(Duration(days: index)));
  }

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
                    text: 'আজ, $_formattedDate',
                    fontWeight: FontWeight.w700,
                    fontSize: mediaQueryWidth(16),
                  ),
                  CustomButton(
                    width: 110.0, // Width (Hug 100px)
                    height: 30.0, // Height (Hug 29px)

                    title: 'নতুন যোগ করুন', borderRadius: 5.0, onTap: () {},
                  ),
                ],
              ),
              SpaceVerticalWidget(height: 30),
              DateSelectorWidget(
                dates: dates,
              ),
              SpaceVerticalWidget(height: 30),
              TodayScheduleWidget()
            ],
          ),
        ),
      )),
    );
  }
}
