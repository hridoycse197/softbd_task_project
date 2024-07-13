import 'package:dashed_circular_progress_bar/dashed_circular_progress_bar.dart';
import 'package:flutter/material.dart';

import '../../components/custom_text_widget.dart';
import '../../components/space_horizontal_widget.dart';
import '../../components/space_vertical_widget.dart';
import '../../config/utils/app_colors.dart';
import '../../config/utils/helper.dart';

class TimeManageMentWidget extends StatelessWidget {
  const TimeManageMentWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          children: [
            SizedBox(
              height: mediaQueryHeight(104),
              width: mediaQueryWidth(104),
              child: DashedCircularProgressBar.aspectRatio(
                aspectRatio: 1, // width ÷ height
                valueNotifier: ValueNotifier(20),
                progress: 50,
                maxProgress: 300,
                corners: StrokeCap.butt,
                foregroundColor: Colors.blue,
                backgroundColor: const Color(0xffeeeeee),
                foregroundStrokeWidth: 10,
                backgroundStrokeWidth: 10,
                animation: true,
                child: Center(
                    child: KText(
                  text: '৬ মাস ৬ দিন ',
                  fontSize: mediaQueryWidth(
                    14,
                  ),
                  fontWeight: FontWeight.w600,
                )),
              ),
            ),
            SpaceVerticalWidget(height: 4),
            KText(
              text: 'সময় অতিবাহিত',
              fontSize: mediaQueryWidth(
                16,
              ),
              fontWeight: FontWeight.w700,
            )
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            KText(
              text: 'মেয়াদকাল',
              fontSize: mediaQueryWidth(
                16,
              ),
              fontWeight: FontWeight.w700,
            ),
            Row(
              children: [
                Image.asset(width: mediaQueryWidth(11), 'assets/calendar.png'),
                KText(
                  maxLines: 2,
                  textOverflow: TextOverflow.visible,
                  text: ' ১ই জানুয়ারি ২০২৪ - ৩১ই জানুয়ারি ২০৩০',
                  fontSize: mediaQueryWidth(
                    12,
                  ),
                  fontWeight: FontWeight.w500,
                ),
              ],
            ),
            KText(
              maxLines: 2,
              fontColor: red,
              textOverflow: TextOverflow.visible,
              text: 'আরও বাকি',
              fontSize: mediaQueryWidth(
                16,
              ),
              fontWeight: FontWeight.w700,
            ),
            Row(
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: mediaQueryHeight(24),
                          width: mediaQueryWidth(24),
                          padding: const EdgeInsets.all(
                              4.0), // Padding inside the box
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.red, width: 1), // Border
                            borderRadius:
                                BorderRadius.circular(4), // Border radius
                          ),
                          alignment: Alignment.center,
                          child: KText(
                            text: '০',
                            fontSize: mediaQueryWidth(12),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SpaceHorizontalWidget(width: 5),
                        Container(
                          height: mediaQueryHeight(24),
                          width: mediaQueryWidth(24),
                          padding: const EdgeInsets.all(
                              4.0), // Padding inside the box
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.red, width: 1), // Border
                            borderRadius:
                                BorderRadius.circular(4), // Border radius
                          ),
                          alignment: Alignment.center,
                          child: KText(
                            text: '৫',
                            fontSize: mediaQueryWidth(12),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    SpaceVerticalWidget(height: 5),
                    KText(
                      maxLines: 2,
                      fontColor: black,
                      textOverflow: TextOverflow.visible,
                      text: 'বছর',
                      fontSize: mediaQueryWidth(
                        12,
                      ),
                      fontWeight: FontWeight.w500,
                    ),
                  ],
                ),
                SpaceHorizontalWidget(width: 20),
                Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: mediaQueryHeight(24),
                          width: mediaQueryWidth(24),
                          padding: const EdgeInsets.all(
                              4.0), // Padding inside the box
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.red, width: 1), // Border
                            borderRadius:
                                BorderRadius.circular(4), // Border radius
                          ),
                          alignment: Alignment.center,
                          child: KText(
                            text: '০',
                            fontSize: mediaQueryWidth(12),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SpaceHorizontalWidget(width: 5),
                        Container(
                          height: mediaQueryHeight(24),
                          width: mediaQueryWidth(24),
                          padding: const EdgeInsets.all(
                              4.0), // Padding inside the box
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.red, width: 1), // Border
                            borderRadius:
                                BorderRadius.circular(4), // Border radius
                          ),
                          alignment: Alignment.center,
                          child: KText(
                            text: '৬',
                            fontSize: mediaQueryWidth(12),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    SpaceVerticalWidget(height: 5),
                    KText(
                      maxLines: 2,
                      fontColor: black,
                      textOverflow: TextOverflow.visible,
                      text: 'মাস',
                      fontSize: mediaQueryWidth(
                        12,
                      ),
                      fontWeight: FontWeight.w500,
                    ),
                  ],
                ),
                SpaceHorizontalWidget(width: 20),
                Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: mediaQueryHeight(24),
                          width: mediaQueryWidth(24),
                          padding: const EdgeInsets.all(
                              4.0), // Padding inside the box
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.red, width: 1), // Border
                            borderRadius:
                                BorderRadius.circular(4), // Border radius
                          ),
                          alignment: Alignment.center,
                          child: KText(
                            text: '১',
                            fontSize: mediaQueryWidth(12),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SpaceHorizontalWidget(width: 5),
                        Container(
                          height: mediaQueryHeight(24),
                          width: mediaQueryWidth(24),
                          padding: const EdgeInsets.all(
                              4.0), // Padding inside the box
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.red, width: 1), // Border
                            borderRadius:
                                BorderRadius.circular(4), // Border radius
                          ),
                          alignment: Alignment.center,
                          child: KText(
                            text: '২',
                            fontSize: mediaQueryWidth(12),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    SpaceVerticalWidget(height: 5),
                    KText(
                      maxLines: 2,
                      fontColor: black,
                      textOverflow: TextOverflow.visible,
                      text: 'দিন',
                      fontSize: mediaQueryWidth(
                        12,
                      ),
                      fontWeight: FontWeight.w500,
                    ),
                  ],
                ),
              ],
            )
          ],
        )
      ],
    );
  }
}
