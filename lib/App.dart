import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:softbd_task_project/src/pages/main_page.dart';

import 'src/pages/add_new_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SoftBd Task Project',
      home: AddNewPage(),
    );
  }
}
