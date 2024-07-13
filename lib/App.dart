import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:softbd_task_project/src/pages/main_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SoftBd Task Project',
      home: MainPage(),
    );
  }
}
