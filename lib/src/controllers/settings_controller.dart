import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:softbd_task_project/src/config/utils/app_colors.dart';
import 'package:softbd_task_project/src/config/utils/helper.dart';

import '../base/base.dart';

class SettingsController extends GetxController {
  final startDate = Rx<DateTime>(DateTime(2024, 1, 1));
  final endDate = Rx<DateTime>(DateTime(2030, 1, 31));
  final today = Rx<DateTime>(DateTime.now());
  final elapseDays = RxInt(0);
  final totalDays = RxInt(0);
  final selectedIndex = RxInt(0);
  final selectedParagraphCategory = RxString('');
  final selectedPlace = RxString('');
  final addNewPageselectedDate = RxString('');
  final timeLinePageselectedDate =
      Rx<DateTime>(DateFormat("yyyy-MM-dd").parse(DateTime.now().toString()));
  final addNewPageselectedDateselectedDateInDateFomat =
      Rx<DateTime>(DateTime.now());
  final remainingDays = RxInt(0);
  final dates = RxList<DateTime>([]);

  @override
  void onInit() async {
    await initAppConfig();
    dates(List.generate(
        15,
        (index) => DateFormat("yyyy-MM-dd")
            .parse(DateTime.now().add(Duration(days: index - 7)).toString())));

    super.onInit();
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
    calculateTime();
  }

  Future<void> initAppConfig() async {
    Base.isarService;
  }

  Future<DateTime?> pickDateTime() async {
    DateTime finalpickedDate = DateTime.now(); // Initial date-time set to now

    // Show date picker to pick date
    final DateTime? pickedDate = await showDatePicker(
      context: Get.context!,
      initialDate: finalpickedDate,
      firstDate: DateTime.now(),
      lastDate: DateTime(2030, 1, 1),
      builder: (BuildContext context, Widget? child) {
        return Theme(
          data: ThemeData.light().copyWith(
            colorScheme: const ColorScheme.light(
              primary: primaryGreen, // Customize primary color if needed
            ),
          ),
          child: child!,
        );
      },
    );

    if (pickedDate != null) {
      finalpickedDate = pickedDate;

      // Show time picker to pick time
      final TimeOfDay? pickedTime = await showTimePicker(
        context: Get.context!,
        initialTime: TimeOfDay.fromDateTime(finalpickedDate),
      );

      if (pickedTime != null) {
        finalpickedDate = DateTime(
          pickedDate.year,
          pickedDate.month,
          pickedDate.day,
          pickedTime.hour,
          pickedTime.minute,
        );
        addNewPageselectedDate(finalpickedDate.toString());

        addNewPageselectedDateselectedDateInDateFomat(finalpickedDate);
      }
    }

    return null; // Return null if user cancels selection
  }
// Example usage in a GestureDetector

  void calculateTime() {
    Duration elapseDifference = today.value.difference(startDate.value);
    Duration remainingDifference = endDate.value.difference(today.value);
    elapseDays(elapseDifference.inDays);
    remainingDays(remainingDifference.inDays);
    totalDays(endDate.value.difference(startDate.value).inDays);
  }
}
