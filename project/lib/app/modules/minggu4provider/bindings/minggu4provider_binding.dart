import 'package:get/get.dart';

import '../controllers/minggu4provider_controller.dart';

class Minggu4providerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Minggu4providerController>(
      () => Minggu4providerController(),
    );
  }
}
