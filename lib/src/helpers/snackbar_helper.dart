import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SnackbarHelper {
  SnackbarHelper._();

  static SnackbarController errorSnackbar(String title, String message) {
    return Get.snackbar(
        backgroundColor: Colors.red, colorText: Colors.white, title, message);
  }

  static SnackbarController successSnackbar(String title, String message) {
    return Get.snackbar(
        backgroundColor: Colors.green, colorText: Colors.white, title, message);
  }
}
