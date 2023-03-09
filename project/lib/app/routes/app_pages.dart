import 'package:get/get.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/minggu1/bindings/minggu1_binding.dart';
import '../modules/minggu1/views/minggu1_view.dart';
import '../modules/minggu2/bindings/minggu2_binding.dart';
import '../modules/minggu2/views/ganjilgenap_view.dart';
import '../modules/minggu2/views/ganjiln_view.dart';
import '../modules/minggu2/views/minggu2_view.dart';
import '../modules/minggu3/bindings/minggu3_binding.dart';
import '../modules/minggu3/views/minggu3_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.MINGGU1,
      page: () => const Minggu1View(),
      binding: Minggu1Binding(),
    ),
    GetPage(
      name: _Paths.MINGGU2,
      page: () => const Minggu2View(),
      binding: Minggu2Binding(),
    ),
    GetPage(
      name: _Paths.GANJILGENAP,
      page: () => const GanjilgenapView(),
    ),
    GetPage(
      name: _Paths.GANJILN,
      page: () => const GanjilnView(),
    ),
    GetPage(
      name: _Paths.MINGGU3,
      page: () => const Minggu3View(),
      binding: Minggu3Binding(),
    ),
  ];
}
