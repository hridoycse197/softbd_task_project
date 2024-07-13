import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../config/utils/app_colors.dart';
import '../config/utils/helper.dart';
import 'custom_text_widget.dart';

class CustomButton extends StatelessWidget {
  String title;
  double height;

  double width;
  VoidCallback onTap;
  double borderRadius;
  CustomButton(
      {super.key,
      required this.borderRadius,
      required this.height,
      required this.width,
      required this.onTap,
      required this.title});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        width: mediaQueryWidth(width), // Width (Hug 100px)
        height: mediaQueryHeight(height), // Height (Hug 29px)

        decoration: BoxDecoration(
          gradient: const LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [primaryGreen, primaryGreenGradient], // Gradient colors
          ),
          borderRadius: BorderRadius.circular(borderRadius), // Border radius
        ),
        child: KText(
            text: title,
            fontWeight: FontWeight.w700,
            fontSize: mediaQueryWidth(12),
            fontColor: Colors.white),
      ),
    );
  }
}
