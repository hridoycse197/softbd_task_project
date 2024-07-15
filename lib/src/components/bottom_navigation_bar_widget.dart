import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:softbd_task_project/src/base/base.dart';
import 'package:stylish_bottom_bar/stylish_bottom_bar.dart';

import 'custom_text_widget.dart';

class BottomNavigationBarWidget extends StatelessWidget {
  const BottomNavigationBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => StylishBottomBar(
        option: AnimatedBarOptions(barAnimation: BarAnimation.blink),
        items: [
          BottomBarItem(
            icon: Image.asset('assets/home.png'),
            selectedIcon: Image.asset(
              'assets/home_selected.png',
              color: Colors.black,
            ),
            title: KText(text: ''),
            selectedColor: Colors.black,
            unSelectedColor: Colors.grey,
          ),
          BottomBarItem(
            icon: Image.asset('assets/calendar.png'),
            selectedIcon: Image.asset(
              'assets/selected_calendar.png',
              color: Colors.black,
            ),
            selectedColor: Colors.black,
            unSelectedColor: Colors.grey,
            title: KText(text: ''),
          ),
          BottomBarItem(
            icon: Image.asset('assets/list_icon.png'),
            selectedIcon: Image.asset(
              'assets/list_icon.png',
              color: Colors.black,
            ),
            selectedColor: Colors.black,
            unSelectedColor: Colors.grey,
            title: KText(text: ''),
          ),
          BottomBarItem(
            icon: Image.asset('assets/profile.png'),
            selectedIcon: Image.asset(
              'assets/profile.png',
              color: Colors.black,
            ),
            selectedColor: Colors.black,
            unSelectedColor: Colors.grey,
            title: KText(text: ''),
          ),
        ],
        hasNotch: true,
        fabLocation: StylishBarFabLocation.center,
        currentIndex: Base.settingsC.selectedIndex.value,
        notchStyle: NotchStyle.circle,
        onTap: (index) {
          Base.settingsC.selectedIndex(index);
        },
      ),
    );
  }
}
