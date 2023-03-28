import 'package:get/get.dart';

import '../controllers/tambahkampus_controller.dart';

class TambahkampusBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TambahkampusController>(
      () => TambahkampusController(),
    );
  }
}
