import 'dart:developer';

import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:softbd_task_project/src/base/base.dart';

double mediaQueryHeight(double size) => (Get.height / 812) * size;
double mediaQueryWidth(double size) => (Get.width / 375) * size;
double mediaQueryFontSize(double size) {
  double scaleFactorWidth = (Get.width / 375);
  double scaleFactorHeight = (Get.height / 812);
  double scaleFactor = scaleFactorWidth < scaleFactorHeight
      ? scaleFactorWidth
      : scaleFactorHeight;

  return size * scaleFactor;
}

int hashId(String string) {
  var hash = 0xcbf29ce484222325;

  var i = 0;
  while (i < string.length) {
    final codeUnit = string.codeUnitAt(i++);
    hash ^= codeUnit >> 8;
    hash *= 0x100000001b3;
    hash ^= codeUnit & 0xFF;
    hash *= 0x100000001b3;
  }

  return hash;
}

bool isAddButtonActive() {
  return (Base.dataC.paragraph.value != '' &&
          Base.dataC.paragraph.value.length <= 45) &&
      (Base.dataC.paragraphDetails.value != '' &&
          Base.dataC.paragraphDetails.value.length <= 120) &&
      Base.settingsC.addNewPageselectedDate.value != '' &&
      Base.settingsC.selectedParagraphCategory.value != '' &&
      Base.settingsC.selectedPlace.value != '';
}

String convertTimestampToDate(int timestamp) {
  DateFormat dateFormat = DateFormat('dd MMMM, yyyy', 'bn');
  return dateFormat
      .format(DateTime.fromMillisecondsSinceEpoch(timestamp * 1000));
}

String convertTimestampToHour(int timestamp) {
  DateFormat dateFormat = DateFormat('hh:mm a, dd MMMM, yyyy', 'bn');
  kLog(
      dateFormat.format(DateTime.fromMillisecondsSinceEpoch(timestamp * 1000)));
  return '${dateFormat.format(DateTime.fromMillisecondsSinceEpoch(timestamp * 1000)).split(' ')[0]} মি.';
}

String getBengaliPeriod(int timeStamp) {
  DateFormat dateFormat = DateFormat('hh:mm a');
  final time =
      dateFormat.format(DateTime.fromMillisecondsSinceEpoch(timeStamp * 1000));

  String amPm = time.split(' ')[1];

  int hour = int.parse(time.split(' ')[0].split(':')[0]);
  String res = '';

  switch (amPm.trim()) {
    case 'AM':
      if (hour == 12 || (hour >= 1 && hour <= 3)) {
        res = 'রাত';
      } else if (hour >= 4 && hour <= 6) {
        res = 'ভোর';
      } else if (hour >= 7 && hour <= 10) {
        res = 'সকাল';
      } else if (hour == 11) {
        res = 'বেলা';
      }
      break;

    case 'PM':
      if (hour == 12 || (hour >= 1 && hour <= 3)) {
        res = 'দুপুর';
      } else if ((hour >= 4 && hour <= 5)) {
        res = 'বিকাল';
      } else if ((hour >= 6 && hour <= 7)) {
        res = 'সন্ধ্যা';
      } else if (hour >= 8 && hour <= 11) {
        res = 'রাত';
      }
    default:
      res = 'রাত';
  }
  return res;
}

String dateFormatForCompare(DateTime time) {
  return DateFormat('dd MMMM, yyyy', 'bn').format(time);
}

String showDate(DateTime time) {
  return DateFormat('hh:mm:ss a, dd, MMMM, yyyy', 'bn').format(time);
}

void kLog(value) {
  log('$value');
}

void nLog(value) {
  log('$value', name: 'nlog');
}

void kError(value) {
  log('\x1B[31m$value');
  log('\x1B[31m---------------------------------------------------------------------------');
}
