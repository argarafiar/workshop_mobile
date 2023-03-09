import 'package:get/get.dart';

import '../controllers/minggu2_controller.dart';

class Minggu2Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Minggu2Controller>(
      () => Minggu2Controller(),
    );
  }
}
