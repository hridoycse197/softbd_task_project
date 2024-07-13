import 'package:get/get.dart';
import 'package:softbd_task_project/src/pages/main_page.dart';


class AppRouter {
  static String splashPage = '/';
  static String loginPage = '/loginPage';
  static String signUpPage = '/signUpPage';
  static String mainPage = '/mainPage';

  static List<GetPage> routes = [
    GetPage(name: splashPage, page: () =>  MainPage()),
  
  ];
}
