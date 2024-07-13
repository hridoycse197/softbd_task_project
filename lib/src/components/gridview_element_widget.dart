import 'package:flutter/material.dart';

import '../config/utils/app_colors.dart';
import '../config/utils/helper.dart';
import 'custom_text_widget.dart';

class GridViewElement extends StatelessWidget {
  String title;
  String iconPath;
  GridViewElement({
    required this.title,
    required this.iconPath,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: mediaQueryHeight(55),
          width: mediaQueryWidth(80),
          color: grey.withOpacity(.2),
          alignment: Alignment.center,
          child: Image.asset(iconPath),
        ),
        KText(
          text: title,
          fontWeight: FontWeight.w600,
          fontSize: mediaQueryWidth(16),
        )
      ],
    );
  }
}
