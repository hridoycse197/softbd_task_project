import 'package:get/get.dart';
import 'package:softbd_task_project/src/pages/add_new_page.dart';
import 'package:softbd_task_project/src/pages/main_page.dart';

class AppRouter {
  static String mainPage = '/mainPage';
  static String addNewElementPage = '/addNewPage';

  static List<GetPage> routes = [
    GetPage(name: mainPage, page: () => MainPage()),
    GetPage(name: addNewElementPage, page: () => AddNewPage()),
  ];
}
