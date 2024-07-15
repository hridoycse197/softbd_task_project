import 'package:flutter/material.dart';

import '../config/utils/app_colors.dart';
import '../config/utils/helper.dart';
import 'custom_text_widget.dart';

class CustomButton extends StatelessWidget {
  String title;
  double height;

  double width;
  bool isValid;
  VoidCallback onTap;
  double borderRadius;
  CustomButton(
      {super.key,
      required this.borderRadius,
      this.isValid = true,
      required this.height,
      required this.width,
      required this.onTap,
      required this.title});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: isValid ? onTap : null,
      child: Container(
        alignment: Alignment.center,
        width: mediaQueryWidth(width), // Width (Hug 100px)
        height: mediaQueryHeight(height), // Height (Hug 29px)

        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: isValid
                ? [primaryGreen, primaryGreenGradient]
                : [grey, grey], // Gradient colors
          ),
          borderRadius: BorderRadius.circular(borderRadius), // Border radius
        ),
        child: KText(
            text: title,
            fontWeight: FontWeight.w700,
            fontSize: mediaQueryFontSize(12),
            fontColor: isValid ? white : black),
      ),
    );
  }
}
