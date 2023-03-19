import 'package:get/get.dart';

import '../controllers/minggu4_controller.dart';

class Minggu4Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Minggu4Controller>(
      () => Minggu4Controller(),
    );
  }
}
