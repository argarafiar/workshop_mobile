import 'package:get/get.dart';
import '../../../data/kampus/kampus_data.dart';

class ListKampusController extends GetxController {
  late List kampus;

  ListKampusController() {
    kampus = getKampus();
  }

  List getKampus() {
    return kampusApi;
  }
}
