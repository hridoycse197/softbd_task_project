import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:softbd_task_project/src/config/utils/helper.dart';
import 'package:softbd_task_project/src/pages/home_page.dart';
import 'package:softbd_task_project/src/pages/timeline_page.dart';

import '../components/bottom_navigation_bar_widget.dart';
import '../components/custom_appbar_widget.dart';
import '../components/custom_text_widget.dart';
import '../config/utils/app_colors.dart';

class MainPage extends StatelessWidget {
  int currentIndex = 1;
  MainPage({super.key});
  List<Widget> pages = [const HomePage(), const TimeLinePage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          gradient:
              LinearGradient(colors: [primaryGreen, primaryGreenGradient]),
        ),
        child: FloatingActionButton(
          backgroundColor: transparent,
          onPressed: () {},
          child: Image.asset('assets/floating_button.png'),
        ),
      ),
      bottomNavigationBar: const BottomNavigationBarWidget(),
      appBar: KappBar(
        centerTitle: currentIndex != 0,
        title: currentIndex == 0
            ? Row(
                children: [
                  Image.asset('assets/appbar_icon.png'),
                  KText(
                    text: '  Flutter Task',
                    fontWeight: FontWeight.w700,
                    fontSize: mediaQueryWidth(16),
                  )
                ],
              )
            : KText(
                text: 'সময়রেখা',
                fontWeight: FontWeight.w700,
                fontSize: mediaQueryWidth(16),
              ),
        isTrailingIcon: true,
      ),
      body: SafeArea(child: Center(child: pages[currentIndex])),
    );
  }
}
