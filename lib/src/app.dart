import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'base/base_bindings.dart';
import 'config/router/app_router.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: AppRouter.routes,
      themeMode: ThemeMode.light,
      initialBinding: BaseBindings(),
      initialRoute: AppRouter.splashPage,
    );
  }
}
