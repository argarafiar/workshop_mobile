import 'package:get/get.dart';
import 'package:project/app/data/models/kampus_model.dart';

class KampusTerkunjungiController extends GetxController {
  late List<Kampus> kampuslist;

  KampusTerkunjungiController() {
    kampuslist = getKampusList();
  }

  List<Kampus> getKampusList() {
    return Get.arguments;
  }
}
