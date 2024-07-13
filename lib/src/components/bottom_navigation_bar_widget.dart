import 'package:flutter/material.dart';
import 'package:stylish_bottom_bar/stylish_bottom_bar.dart';

import 'custom_text_widget.dart';

class BottomNavigationBarWidget extends StatelessWidget {
  const BottomNavigationBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return StylishBottomBar(
      option: AnimatedBarOptions(barAnimation: BarAnimation.blink),
      // option: AnimatedBarOptions(
      //   // iconSize: 32,
      //   barAnimation: BarAnimation.blink,
      //   iconStyle: IconStyle.animated,

      //   // opacity: 0.3,
      // ),
      items: [
        BottomBarItem(
          icon: Image.asset('assets/home.png'),
          selectedIcon: Image.asset(
            'assets/home.png',
            color: Colors.black,
          ),
          selectedColor: Colors.red,
          unSelectedColor: Colors.grey,
          title: KText(text: ''),
        ),
        BottomBarItem(
          icon: Image.asset('assets/calendar.png'),
          selectedIcon: Image.asset(
            'assets/calendar.png',
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
      currentIndex: 0,
      notchStyle: NotchStyle.circle,
      onTap: (index) {},
    );
  }
}
