import 'package:get/get.dart';

import '../controllers/minggu1_controller.dart';

class Minggu1Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Minggu1Controller>(
      () => Minggu1Controller(),
    );
  }
}
