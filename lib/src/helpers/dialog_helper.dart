import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../components/custom_button_widget.dart';
import '../components/custom_text_widget.dart';
import '../components/space_vertical_widget.dart';
import '../config/utils/helper.dart';

class DialogHelper {
  DialogHelper._();
  static Future<void> addSuccessDialog() {
    return Get.defaultDialog(
        barrierDismissible: false,
        title: '',
        titlePadding: const EdgeInsets.all(0),
        content: Container(
            width: mediaQueryWidth(327.0), // Fixed width
            height: mediaQueryHeight(286), // Hug 80% of screen height
            padding: const EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.white,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center, // Center content
              children: [
                Image.asset('assets/success.png'),
                SpaceVerticalWidget(height: 20), // Add spacing
                KText(
                  text: 'নতুন অনুচ্ছেদ সংরক্ষন',
                  fontSize: mediaQueryWidth(18.0),
                  fontWeight: FontWeight.w700,
                ),
                const SizedBox(height: 10.0), // Add spacing
                KText(
                  textAlign: TextAlign.center,
                  text: 'আপনার সময়রেখাতে নতুন অনুচ্ছেদ সংরক্ষণ সম্পুর্ন হয়েছে ',
                  fontSize: mediaQueryWidth(14.0),
                  fontWeight: FontWeight.w400,
                ),
                SpaceVerticalWidget(height: 2), // Add spacing
                CustomButton(
                    borderRadius: 5,
                    height: 46,
                    width: 207,
                    onTap: () {
                      Get.close(1);
                    },
                    title: 'আরও যোগ করুন')
              ],
            )));
  }
}
