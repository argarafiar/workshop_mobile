import 'package:get/get.dart';
import 'package:project/app/modules/minggu3/controllers/detailkampus_controller.dart';

import '../controllers/listkampus_controller.dart';

class KampusBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ListKampusController>(
      () => ListKampusController(),
    );
    Get.lazyPut<DetailkampusController>(
      () => DetailkampusController(),
    );
  }
}
