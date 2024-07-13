import 'package:flutter/material.dart';

import 'package:softbd_task_project/src/components/custom_text_widget.dart';
import 'package:softbd_task_project/src/components/space_horizontal_widget.dart';
import 'package:softbd_task_project/src/components/space_vertical_widget.dart';

import '../../config/utils/app_colors.dart';
import '../../config/utils/helper.dart';

class TodayScheduleWidget extends StatelessWidget {
  const TodayScheduleWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.all(10),
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          KText(
            text: 'আজকের কার্যক্রম',
            fontSize: mediaQueryWidth(16),
            fontWeight: FontWeight.w700,
          ),
          SpaceVerticalWidget(height: 10),
          SizedBox(
            height: mediaQueryHeight(372),
            child: ListView.builder(
              itemCount: 100,
              shrinkWrap: false,
              physics: const AlwaysScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          KText(
                            text: 'দুপুর',
                            fontColor: timeTextColor,
                            fontSize: mediaQueryWidth(14),
                            fontWeight: FontWeight.w500,
                          ),
                          KText(
                            text: '২:৩০ মি.',
                            fontColor: timeTextColor,
                            fontSize: mediaQueryWidth(14),
                            fontWeight: FontWeight.w500,
                          ),
                        ],
                      ),
                      Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(10),
                        width: mediaQueryWidth(195),
                        decoration: const BoxDecoration(
                            gradient: LinearGradient(
                                colors: [primaryGreen, primaryGreenGradient]),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                const Icon(
                                  Icons.watch_later_outlined,
                                  color: white,
                                ),
                                KText(
                                  text: ' ১১:০০ মি.',
                                  fontColor: white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: mediaQueryWidth(12),
                                )
                              ],
                            ),
                            KText(
                              maxLines: 10,
                              text:
                                  'সেথায় তোমার কিশোরী বধূটি মাটির প্রদীপ ধরি, তুলসীর মূলে প্রণাম যে আঁকে হয়ত তোমারে স্মরি।',
                              fontColor: white,
                              fontWeight: FontWeight.w600,
                              fontSize: mediaQueryWidth(14),
                            ),
                            KText(
                              text: 'বাক্য',
                              fontColor: white,
                              fontWeight: FontWeight.w500,
                              fontSize: mediaQueryWidth(12),
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Icon(
                                  Icons.location_on_outlined,
                                  color: white,
                                ),
                                KText(
                                  text: 'ঢাকা, বাংলাদেশ',
                                  fontColor: white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: mediaQueryWidth(12),
                                )
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
          // Adjust spacing between columns
        ],
      ),
    );
  }
}
