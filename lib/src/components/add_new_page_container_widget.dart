import 'package:flutter/material.dart';

import '../config/utils/app_colors.dart';
import '../config/utils/helper.dart';

class AddNewPageContainerWidget extends StatelessWidget {
  Widget child;
  AddNewPageContainerWidget({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        height: mediaQueryHeight(65),
        padding: EdgeInsets.symmetric(horizontal: mediaQueryWidth(15)),
        width: mediaQueryWidth(327),
        decoration: BoxDecoration(
            color: white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                  color: grey.withOpacity(.2),
                  offset: Offset(1, 1),
                  spreadRadius: .5,
                  blurRadius: 1,
                  blurStyle: BlurStyle.outer),
              BoxShadow(
                  color: grey.withOpacity(.2),
                  offset: Offset(1, -1),
                  spreadRadius: .5,
                  blurStyle: BlurStyle.outer,
                  blurRadius: 1),
            ]),
        child: child);
  }
}
