import 'package:get/get.dart';

import '../controllers/minggu5_controller.dart';

class Minggu5Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Minggu5Controller>(
      () => Minggu5Controller(),
    );
  }
}
