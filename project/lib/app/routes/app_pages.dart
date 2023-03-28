import 'package:get/get.dart';
import 'package:project/app/modules/tambahkampus/views/editkampus_view.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/minggu1/bindings/minggu1_binding.dart';
import '../modules/minggu1/views/minggu1_view.dart';
import '../modules/minggu2/bindings/minggu2_binding.dart';
import '../modules/minggu2/views/ganjilgenap_view.dart';
import '../modules/minggu2/views/ganjiln_view.dart';
import '../modules/minggu2/views/minggu2_view.dart';
import '../modules/minggu3/bindings/minggu3_binding.dart';
import '../modules/minggu3/views/detailkampus_view.dart';
import '../modules/minggu3/views/latihan3_view.dart';
import '../modules/minggu3/views/minggu3_view.dart';
import '../modules/minggu3/views/tugas3_view.dart';
import '../modules/minggu4/bindings/minggu4_binding.dart';
import '../modules/minggu4/views/donekampus_view.dart';
import '../modules/minggu4/views/minggu4_view.dart';
import '../modules/minggu5/bindings/minggu5_binding.dart';
import '../modules/minggu5/views/article_detail_view.dart';
import '../modules/minggu5/views/article_web_view.dart';
import '../modules/minggu5/views/minggu5_view.dart';
import '../modules/tambahkampus/bindings/tambahkampus_binding.dart';
import '../modules/tambahkampus/views/tambahkampus_view.dart';
import '../modules/tugasminggu5/bindings/tugasminggu5_binding.dart';
import '../modules/tugasminggu5/views/detailkampusapi_view.dart';
import '../modules/tugasminggu5/views/tugasminggu5_view.dart';

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
    GetPage(
      name: _Paths.DETAILKAMPUS,
      page: () => const DetailkampusView(),
    ),
    GetPage(
      name: _Paths.LATIHAN3,
      page: () => const Latihan3View(),
    ),
    GetPage(
      name: _Paths.TUGAS3,
      page: () => const Tugas3View(),
    ),
    GetPage(
      name: _Paths.MINGGU4,
      page: () => Minggu4View(),
      binding: Minggu4Binding(),
    ),
    GetPage(
      name: _Paths.MINGGU5,
      page: () => const Minggu5View(),
      binding: Minggu5Binding(),
    ),
    GetPage(
      name: _Paths.ARTICLEDETAIL,
      page: () => ArticleDetailView(),
    ),
    GetPage(
      name: _Paths.ARTICLEWEB,
      page: () => ArticleWebView(),
    ),
    GetPage(
      name: _Paths.TUGASMINGGU5,
      page: () => Tugasminggu5View(),
      binding: Tugasminggu5Binding(),
    ),
    GetPage(
      name: _Paths.DETAILKAMPUSAPI,
      page: () => DetailkampusapiView(),
    ),
    GetPage(
      name: _Paths.TAMBAHKAMPUS,
      page: () => const TambahkampusView(),
      binding: TambahkampusBinding(),
    ),
    GetPage(
      name: _Paths.EDITKAMPUS,
      page: () => EditkampusView(),
    ),
  ];
}
