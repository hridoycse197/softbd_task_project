import 'package:flutter/material.dart';

import '../config/utils/helper.dart';


class CustomLogoButtonWidget extends StatelessWidget {
  String logopath;
  VoidCallback voidCallback;
  CustomLogoButtonWidget(
      {super.key, required this.logopath, required this.voidCallback});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: voidCallback,
      child: SizedBox(
        width: mediaQueryWidth(56),
        height: mediaQueryHeight(56),
        child: Image.asset(logopath),
      ),
    );
  }
}
