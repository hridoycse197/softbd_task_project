import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:softbd_task_project/src/base/base_bindings.dart';
import 'package:softbd_task_project/src/pages/main_page.dart';

import 'src/config/router/app_router.dart';

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: BaseBindings(),
      debugShowCheckedModeBanner: false,
      title: 'SoftBd Task Project',
      getPages: AppRouter.routes,
      initialRoute: AppRouter.mainPage,
    );
  }
}
