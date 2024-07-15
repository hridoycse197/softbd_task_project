import 'package:dashed_circular_progress_bar/dashed_circular_progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:softbd_task_project/src/base/base.dart';

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
    return Obx(
      () => Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              SizedBox(
                height: mediaQueryHeight(104),
                width: mediaQueryWidth(104),
                child: DashedCircularProgressBar.aspectRatio(
                  startAngle: 180,
                  aspectRatio: 1, // width ÷ height
                  progress: Base.settingsC.elapseDays.value.toDouble(),
                  maxProgress: Base.settingsC.totalDays.value.toDouble(),
                  corners: StrokeCap.butt,
                  foregroundColor: primaryGreen,
                  backgroundColor: black.withOpacity(.05),
                  foregroundStrokeWidth: 10,
                  backgroundStrokeWidth: 10,
                  animation: true,
                  child: Center(
                      child: FittedBox(
                    child: KText(
                      text: Base.settingsC.elapseDays ~/ 365 != 0
                          ? '${convertSingleLetterBangla(Base.settingsC.elapseDays ~/ 365)} বছর ${convertSingleLetterBangla((Base.settingsC.elapseDays % 365) ~/ 30)} মাস ${convertSingleLetterBangla(Base.settingsC.elapseDays % 30)} দিন'
                          : '${convertSingleLetterBangla(Base.settingsC.elapseDays ~/ 30)} মাস ${convertSingleLetterBangla(Base.settingsC.elapseDays % 30)} দিন',
                      fontSize: mediaQueryFontSize(
                        8,
                      ),
                      fontWeight: FontWeight.w600,
                    ),
                  )),
                ),
              ),
              SpaceVerticalWidget(height: 4),
              KText(
                text: 'সময় অতিবাহিত',
                fontSize: mediaQueryFontSize(
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
                fontSize: mediaQueryFontSize(
                  16,
                ),
                fontWeight: FontWeight.w700,
              ),
              Row(
                children: [
                  Image.asset(
                      width: mediaQueryWidth(11), 'assets/calendar.png'),
                  KText(
                    maxLines: 2,
                    textOverflow: TextOverflow.visible,
                    text: ' ১ই জানুয়ারি ২০২৪ - ৩১ই জানুয়ারি ২০৩০',
                    fontSize: mediaQueryFontSize(
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
                fontSize: mediaQueryFontSize(
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
                              text: convertDoubleLetterBangla(
                                  Base.settingsC.remainingDays ~/ 365, 0),
                              fontSize: mediaQueryFontSize(12),
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
                              text: convertDoubleLetterBangla(
                                  Base.settingsC.remainingDays ~/ 365, 1),
                              fontSize: mediaQueryFontSize(12),
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
                        fontSize: mediaQueryFontSize(
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
                              text: convertDoubleLetterBangla(
                                  (Base.settingsC.remainingDays % 365) ~/ 30,
                                  0),
                              fontSize: mediaQueryFontSize(12),
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
                              text: convertDoubleLetterBangla(
                                  (Base.settingsC.remainingDays % 365) ~/ 30,
                                  1),
                              fontSize: mediaQueryFontSize(12),
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
                        fontSize: mediaQueryFontSize(
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
                              text: convertDoubleLetterBangla(
                                  (Base.settingsC.remainingDays % 365) % 30, 0),
                              fontSize: mediaQueryFontSize(12),
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
                              text: convertDoubleLetterBangla(
                                  (Base.settingsC.remainingDays % 365) % 30, 1),
                              fontSize: mediaQueryFontSize(12),
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
                        fontSize: mediaQueryFontSize(
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
      ),
    );
  }

  String convertSingleLetterBangla(num v) =>
      NumberFormat.decimalPattern('bn').format(v);
  String convertDoubleLetterBangla(num v, int position) =>
      NumberFormat.decimalPattern('bn')
          .format(v)
          .padLeft(2, NumberFormat.decimalPattern('bn').format(0))
          .split('')[position];
}
