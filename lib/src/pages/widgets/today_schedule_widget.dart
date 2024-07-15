import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:softbd_task_project/src/base/base.dart';

import 'package:softbd_task_project/src/components/custom_text_widget.dart';
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
            fontSize: mediaQueryFontSize(16),
            fontWeight: FontWeight.w700,
          ),
          SpaceVerticalWidget(height: 10),
          Obx(
            () => SizedBox(
              height: mediaQueryHeight(358),
              child: Base.dataC.isLoading.value
                  ? const Center(
                      child: CircularProgressIndicator(
                        color: primaryGreen,
                      ),
                    )
                  : Base.dataC.allData
                          .where(
                            (p0) =>
                                convertTimestampToDate(int.parse(p0.date!)) ==
                                dateFormatForCompare(Base
                                    .settingsC.timeLinePageselectedDate.value),
                          )
                          .toList()
                          .isEmpty
                      ? Center(
                          child: KText(text: "দুঃখিত!!! কোন ডাটা নেই "),
                        )
                      : Obx(
                          () => ListView.builder(
                            itemCount: Base.dataC.allData
                                .where(
                                  (p0) =>
                                      convertTimestampToDate(
                                          int.parse(p0.date!)) ==
                                      dateFormatForCompare(Base.settingsC
                                          .timeLinePageselectedDate.value),
                                )
                                .toList()
                                .length,
                            shrinkWrap: false,
                            physics: const AlwaysScrollableScrollPhysics(),
                            itemBuilder: (context, index) {
                              final item = Base.dataC.allData
                                  .where(
                                    (p0) =>
                                        convertTimestampToDate(
                                            int.parse(p0.date!)) ==
                                        dateFormatForCompare(Base.settingsC
                                            .timeLinePageselectedDate.value),
                                  )
                                  .toList()[index];
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      children: [
                                        KText(
                                          text: getBengaliPeriod(
                                              int.parse(item.date!)),
                                          fontColor: timeTextColor,
                                          fontSize: mediaQueryFontSize(14),
                                          fontWeight: FontWeight.w500,
                                        ),
                                        KText(
                                          text: convertTimestampToHour(
                                              int.parse(item.date!)),
                                          fontColor: timeTextColor,
                                          fontSize: mediaQueryFontSize(14),
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ],
                                    ),
                                    Container(
                                      alignment: Alignment.center,
                                      padding: const EdgeInsets.all(10),
                                      width: mediaQueryWidth(195),
                                      decoration: const BoxDecoration(
                                          gradient: LinearGradient(colors: [
                                            primaryGreen,
                                            primaryGreenGradient
                                          ]),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10))),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              const Icon(
                                                Icons.watch_later_outlined,
                                                color: white,
                                              ),
                                              KText(
                                                text:
                                                    ' ${convertTimestampToHour(int.parse(item.date!))}',
                                                fontColor: white,
                                                fontWeight: FontWeight.w500,
                                                fontSize:
                                                    mediaQueryFontSize(12),
                                              )
                                            ],
                                          ),
                                          KText(
                                            maxLines: 10,
                                            text: item.name!,
                                            fontColor: white,
                                            fontWeight: FontWeight.w600,
                                            fontSize: mediaQueryFontSize(14),
                                          ),
                                          KText(
                                            text: item.category!,
                                            fontColor: white,
                                            fontWeight: FontWeight.w500,
                                            fontSize: mediaQueryFontSize(12),
                                          ),
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              const Icon(
                                                Icons.location_on_outlined,
                                                color: white,
                                              ),
                                              KText(
                                                text: item.location!,
                                                fontColor: white,
                                                fontWeight: FontWeight.w500,
                                                fontSize:
                                                    mediaQueryFontSize(12),
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
            ),
          ),
          // Adjust spacing between columns
        ],
      ),
    );
  }
}
