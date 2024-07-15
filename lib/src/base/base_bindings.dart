import 'package:get/get.dart';
import 'package:softbd_task_project/src/controllers/data_controller.dart';

import '../controllers/settings_controller.dart';
import '../services/isar_services.dart';

class BaseBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => IsarService(),
    );
    Get.lazyPut(
      () => DataController(),
    );
    Get.lazyPut(
      () => SettingsController(),
    );
  }
}
