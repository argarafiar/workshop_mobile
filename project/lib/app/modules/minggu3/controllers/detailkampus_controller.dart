import 'package:get/get.dart';
import 'package:project/app/data/models/kampus_model.dart';

class DetailkampusController extends GetxController {
  late Kampus kampus;

  DetailkampusController() {
    kampus = Get.arguments;
  }
}
