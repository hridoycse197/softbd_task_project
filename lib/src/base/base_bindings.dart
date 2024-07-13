import 'package:get/get.dart';

import '../services/isar_services.dart';

class BaseBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => IsarService(),
    );

  }
}
