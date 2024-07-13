import 'package:flutter/material.dart';

import '../config/utils/helper.dart';

class SpaceHorizontalWidget extends StatelessWidget {
  double width;

  SpaceHorizontalWidget({super.key, required this.width});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width:mediaQueryWidth( width),
    );
  }
}
