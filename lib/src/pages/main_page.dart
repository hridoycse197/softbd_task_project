import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:softbd_task_project/src/base/base.dart';
import 'package:softbd_task_project/src/config/utils/helper.dart';
import 'package:softbd_task_project/src/pages/home_page.dart';
import 'package:softbd_task_project/src/pages/timeline_page.dart';

import '../components/bottom_navigation_bar_widget.dart';
import '../components/custom_appbar_widget.dart';
import '../components/custom_text_widget.dart';
import '../config/router/app_router.dart';
import '../config/utils/app_colors.dart';

class MainPage extends StatelessWidget {
  MainPage({super.key});
  List<Widget> pages = [
    const HomePage(),
    TimeLinePage(),
    Icon(
      Icons.delete,
      size: mediaQueryWidth(80),
    ),
    Icon(
      Icons.delete,
      size: mediaQueryWidth(80),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        resizeToAvoidBottomInset: true,
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Container(
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            gradient:
                LinearGradient(colors: [primaryGreen, primaryGreenGradient]),
          ),
          child: FloatingActionButton(
            backgroundColor: transparent,
            onPressed: () {
              // kLog(convertTimestampToHour(1721211300));
              // kLog(getBengaliPeriod(1721211300));

              getBengaliPeriod(1720756800);
              // kLog(convertTimestampToHour(1720814400));
            },
            child: Image.asset('assets/floating_button.png'),
          ),
        ),
        bottomNavigationBar: const BottomNavigationBarWidget(),
        appBar: KappBar(
          centerTitle: Base.settingsC.selectedIndex.value != 0,
          title: Base.settingsC.selectedIndex.value == 0
              ? Row(
                  children: [
                    Image.asset('assets/appbar_icon.png'),
                    KText(
                      text: '  Flutter Task',
                      fontWeight: FontWeight.w700,
                      fontSize: mediaQueryFontSize(16),
                    )
                  ],
                )
              : KText(
                  text: 'সময়রেখা',
                  fontWeight: FontWeight.w700,
                  fontSize: mediaQueryFontSize(16),
                ),
          isTrailingIcon: true,
        ),
        body: SafeArea(
            child: Center(child: pages[Base.settingsC.selectedIndex.value])),
      ),
    );
  }
}
