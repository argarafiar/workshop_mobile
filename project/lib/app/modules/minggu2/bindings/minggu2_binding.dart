import 'package:get/get.dart';

import '../controllers/prima_controller.dart';
import '../controllers/ganjilgenap_controller.dart';
import '../controllers/kelipatan_controller.dart';

class Minggu2Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PrimaController>(
      () => PrimaController(),
    );
    Get.lazyPut<GanjilGenapController>(
      () => GanjilGenapController(),
    );
    Get.lazyPut<KelipatanController>(
      () => KelipatanController(),
    );
  }
}
