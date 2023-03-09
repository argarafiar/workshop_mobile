import 'package:get/get.dart';

import '../controllers/minggu3_controller.dart';

class Minggu3Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Minggu3Controller>(
      () => Minggu3Controller(),
    );
  }
}
