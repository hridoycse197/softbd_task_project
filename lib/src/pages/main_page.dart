import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../base/base.dart';
import '../components/bottom_navigation_bar_widget.dart';
import '../components/custom_appbar_widget.dart';
import '../components/custom_text_widget.dart';

class MainPage extends StatelessWidget {
  MainPage({super.key});
  List<Widget> pages = [
    KText(text: 'Combined'),
    KText(text: 'Cart'),
  ];

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        resizeToAvoidBottomInset: false,
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Container(
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            gradient:
                LinearGradient(colors: [Color(0xffFF679B), Color(0xffFF7B51)]),
          ),
          child: FloatingActionButton(
            backgroundColor: Colors.transparent,
            onPressed: () {
           },
            child: const Icon(
              Icons.search,
              color: Colors.white,
            ),
          ),
        ),
        bottomNavigationBar: const BottomNavigationBarWidget(),
        appBar: KappBar(
          title: 'Title',
          isTrailingIcon: true,
        ),
        body: SafeArea(
            child:
                Center(child: pages[0])),
      ),
    );
  }
}
