import 'package:get/get.dart';
import 'package:softbd_task_project/src/controllers/data_controller.dart';

import '../controllers/settings_controller.dart';
import '../services/isar_services.dart';

class Base {
  static final isarService = Get.find<IsarService>();
  static final dataC = Get.find<DataController>();
  static final settingsC = Get.find<SettingsController>();
}
