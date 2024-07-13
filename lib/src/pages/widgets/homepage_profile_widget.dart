import 'package:flutter/material.dart';

import '../../components/custom_text_widget.dart';
import '../../components/space_horizontal_widget.dart';
import '../../config/utils/app_colors.dart';
import '../../config/utils/helper.dart';

class HomePageProfileWidget extends StatelessWidget {
  const HomePageProfileWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: mediaQueryHeight(98),
      width: mediaQueryWidth(327),
      decoration: BoxDecoration(
          color: white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(
                color: grey,
                offset: Offset(1, 1),
                spreadRadius: .5,
                blurRadius: 1,
                blurStyle: BlurStyle.outer),
            BoxShadow(
                color: grey,
                offset: Offset(1, -1),
                spreadRadius: .5,
                blurStyle: BlurStyle.outer,
                blurRadius: 1),
          ]),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: mediaQueryWidth(60.0),
              height: mediaQueryHeight(60.0),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(
                      'assets/placeholder.png'), // Replace with your placeholder image
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SpaceHorizontalWidget(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                KText(
                  text: 'মোঃ মোহাইমেনুল রেজা',
                  fontWeight: FontWeight.w700,
                  fontSize: mediaQueryWidth(20),
                ),
                KText(
                  text: 'সফটবিডি লিমিটেড',
                  fontWeight: FontWeight.w400,
                  fontSize: mediaQueryWidth(14),
                  fontColor: fontColorsecondary,
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.location_on_outlined,
                      color: grey,
                    ),
                    KText(
                      text: 'ঢাকা',
                      fontWeight: FontWeight.w400,
                      fontSize: mediaQueryWidth(14),
                      fontColor: fontColorsecondary,
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
