import 'package:get/get.dart';

import '../controllers/tugasminggu5_controller.dart';

class Tugasminggu5Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Tugasminggu5Controller>(
      () => Tugasminggu5Controller(),
    );
  }
}
