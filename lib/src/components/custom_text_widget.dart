import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class KText extends StatelessWidget {
  String text;
  int maxLines;
  Color fontColor;
  double fontSize;
  TextDecoration textDecoration;
  TextAlign textAlign;
  TextOverflow? textOverflow;
  FontWeight? fontWeight;
  KText(
      {super.key,
      required this.text,
      this.textAlign = TextAlign.left,
      this.textDecoration = TextDecoration.none,
      this.fontWeight,
      this.fontSize = 12,
      this.fontColor = Colors.black,
      textOverflow = TextOverflow.ellipsis,
      this.maxLines = 2});

  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: textAlign,
      textScaler: const TextScaler.linear(1.0),
      text,
      maxLines: maxLines,
      style: GoogleFonts.roboto(
        color: fontColor,
        decoration: textDecoration,
        fontWeight: fontWeight,
        fontSize: fontSize,
      ),
      overflow: textOverflow,
    );
  }
}
