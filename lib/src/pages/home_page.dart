import 'package:flutter/material.dart';
import 'package:softbd_task_project/src/components/space_vertical_widget.dart';
import 'package:softbd_task_project/src/config/utils/helper.dart';

import '../components/gridview_element_widget.dart';
import '../config/utils/app_colors.dart';
import 'widgets/homepage_profile_widget.dart';
import 'widgets/time_management_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: white,
      body: SafeArea(
          child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SpaceVerticalWidget(height: 40),
            //user section
            const HomePageProfileWidget(),

            SpaceVerticalWidget(height: 20),
            const TimeManageMentWidget(),
            SpaceVerticalWidget(height: 20),
            SizedBox(
              height: mediaQueryHeight(350),
              child: GridView(
                  primary: false,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisSpacing: 5,
                      mainAxisSpacing: 5,
                      childAspectRatio: 72 / 78,
                      crossAxisCount: 3),
                  children: [
                    GridViewElement(
                      title: 'মেনু নং \n ০০০০১',
                      iconPath: 'assets/menu_1.png',
                    ),
                    GridViewElement(
                      title: 'মেনু নং \n ০০০০২',
                      iconPath: 'assets/menu_2.png',
                    ),
                    GridViewElement(
                      title: 'মেনু নং \n ০০০০৩',
                      iconPath: 'assets/menu_3.png',
                    ),
                    GridViewElement(
                      title: 'মেনু নং \n ০০০০৪',
                      iconPath: 'assets/menu_4.png',
                    ),
                    GridViewElement(
                      title: 'মেনু নং \n ০০০০৫',
                      iconPath: 'assets/menu_5.png',
                    ),
                    GridViewElement(
                      title: 'মেনু নং \n ০০০০৬',
                      iconPath: 'assets/menu_6.png',
                    ),
                  ]),
            )
          ],
        ),
      )),
    );
  }
}
