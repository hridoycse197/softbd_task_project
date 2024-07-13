import 'package:flutter/material.dart';

import 'custom_text_widget.dart';

class CustomButtonWidget extends StatelessWidget {
  final double width;
  final double height;
  final Color color;
  final Color titleColor;
  final Color borderColor;
  final String title;
  final VoidCallback onTap;
  final bool isLoading;

  const CustomButtonWidget({
    super.key,
    this.isLoading = false,
    required this.width,
    this.borderColor = Colors.transparent,
    required this.height,
    this.titleColor = Colors.white,
    required this.color,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: color,
          border: Border.all(
              color: borderColor ),
          borderRadius:
              BorderRadius.circular(8.0), // Add rounded corners if desired
        ),
        child: Center(
          child: isLoading
              ? const CircularProgressIndicator(
                  color: Colors.white,
                )
              : KText(
                  text: title,
                  fontColor: titleColor,
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
        ),
      ),
    );
  }
}
