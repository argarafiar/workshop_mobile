import 'package:get/get.dart';
import 'package:project/app/modules/minggu4/controllers/kampusterkunjungi_controller.dart';

import '../controllers/listkampus_state_controller.dart';

class KampusStateBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ListKampusKunjunganController>(
      () => ListKampusKunjunganController(),
    );
    Get.lazyPut<KampusTerkunjungiController>(
      () => KampusTerkunjungiController(),
    );
  }
}
