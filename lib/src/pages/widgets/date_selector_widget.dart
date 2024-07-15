import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';
import 'package:softbd_task_project/src/base/base.dart';
import 'package:softbd_task_project/src/components/custom_text_widget.dart';

import '../../config/utils/app_colors.dart';
import '../../config/utils/helper.dart';

class DateSelectorWidget extends StatelessWidget {
  final List<DateTime> dates;

  const DateSelectorWidget({super.key, required this.dates});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Container(
        alignment: Alignment.center,
        height: mediaQueryHeight(120),
        width: mediaQueryWidth(327),
        decoration: BoxDecoration(
            color: white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: const [
              BoxShadow(
                  color: grey,
                  offset: Offset(1, 1),
                  spreadRadius: .5,
                  blurRadius: 1,
                  blurStyle: BlurStyle.outer),
              BoxShadow(
                  color: grey,
                  offset: Offset(1, -1),
                  spreadRadius: .5,
                  blurStyle: BlurStyle.outer,
                  blurRadius: 1),
            ]),
        child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: dates.length,
              itemBuilder: (context, index) {
                final item = dates[index];
                return GestureDetector(
                  onTap: () {
                    Base.settingsC.timeLinePageselectedDate(item);
                  },
                  child: BengaliDate(
                    index: index,
                    date: item,
                  ),
                );
              },
            )),
      ),
    );
  }
}

class BengaliDate extends StatelessWidget {
  final DateTime date;
  int index;
  BengaliDate({super.key, required this.date, required this.index});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: initializeDateFormatting('bn'),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const CircularProgressIndicator();
        } else {
          String formattedDate =
              DateFormat.EEEE('bn').format(date); // Weekday name in Bengali
          String day = DateFormat.d('bn').format(date); // Day in Bengali

          return Obx(
            () => Container(
              width: mediaQueryWidth(45),
              alignment: Alignment.center,
              margin: const EdgeInsets.all(5),
              padding: const EdgeInsets.all(7),
              decoration: BoxDecoration(
                  border: index ==
                          Base.settingsC.dates.indexOf(
                              Base.settingsC.timeLinePageselectedDate.value)
                      ? Border.all(
                          color: primaryGreen, width: mediaQueryWidth(1.5))
                      : null,
                  borderRadius: BorderRadius.circular(25)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  KText(
                    text: formattedDate.substring(0, formattedDate.length - 3),
                    fontSize: mediaQueryFontSize(14),
                    fontWeight: FontWeight.w400,
                  ),
                  KText(
                    textAlign: TextAlign.center,
                    text: day,
                    fontSize: mediaQueryFontSize(16),
                    fontWeight: FontWeight.w600,
                  ),
                ],
              ),
            ),
          );
        }
      },
    );
  }
}
