import 'dart:developer';

import 'package:get/get.dart';

double mediaQueryHeight(double size) => (Get.height / 825.4545454545455) * size;
double mediaQueryWidth(double size) => (Get.width / 392.72727272727275) * size;

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
