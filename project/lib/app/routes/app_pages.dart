import 'package:get/get.dart';

import '../modules/calculator/bindings/calculator_binding.dart';
import '../modules/calculator/views/calculator_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/minggu1/views/minggu1_view.dart';
import '../modules/minggu2/bindings/minggu2_binding.dart';
import '../modules/minggu2/views/ganjilgenap_view.dart';
import '../modules/minggu2/views/kelipatan_view.dart';
import '../modules/minggu2/views/prima_view.dart';
import '../modules/minggu3/bindings/kampus_binding.dart';
import '../modules/minggu3/views/detailkampus_view.dart';
import '../modules/minggu3/views/listkampus_view.dart';
import '../modules/minggu4/bindings/kampus_state_binding.dart';
import '../modules/minggu4/views/donekampus_view.dart';
import '../modules/minggu4/views/listkampuskunjungan_view.dart';
import '../modules/minggu5/bindings/article_binding.dart';
import '../modules/minggu5/views/article_detail_view.dart';
import '../modules/minggu5/views/article_web_view.dart';
import '../modules/minggu5/views/article_view.dart';

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
    ),
    GetPage(
      name: _Paths.MINGGU2,
      page: () => const PrimaView(),
      binding: Minggu2Binding(),
    ),
    GetPage(
      name: _Paths.GANJILGENAP,
      page: () => const GanjilgenapView(),
      binding: Minggu2Binding(),
    ),
    GetPage(
      name: _Paths.GANJILN,
      page: () => const KelipatanView(),
      binding: Minggu2Binding(),
    ),
    GetPage(
      name: _Paths.DETAILKAMPUS,
      page: () => const DetailkampusView(),
      binding: KampusBinding(),
    ),
    GetPage(
      name: _Paths.TUGAS3,
      page: () => const ListKampusView(),
      binding: KampusBinding(),
    ),
    GetPage(
      name: _Paths.MINGGU4,
      page: () => ListKampusKunjunganView(),
      binding: KampusStateBinding(),
    ),
    GetPage(
      name: _Paths.KAMPUSTERKUNJUNGI,
      page: () => KampusTerkunjungiView(),
      binding: KampusStateBinding(),
    ),
    GetPage(
      name: _Paths.MINGGU5,
      page: () => ArticleView(),
      binding: ArticleBinding(),
    ),
    GetPage(
        name: _Paths.ARTICLEDETAIL,
        page: () => ArticleDetailView(),
        binding: ArticleBinding()),
    GetPage(
      name: _Paths.ARTICLEWEB,
      page: () => ArticleWebView(),
      binding: ArticleBinding(),
    ),
    GetPage(
      name: _Paths.CALCULATOR,
      page: () => CalculatorView(),
      binding: CalculatorBinding(),
    ),
  ];
}
