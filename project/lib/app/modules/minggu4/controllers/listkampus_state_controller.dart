import 'package:get/get.dart';
import 'package:project/app/data/models/kampus_model.dart';
import '../../../data/kampus/kampus_data.dart';

class ListKampusKunjunganController extends GetxController {
  late List<Kampus> kampusKunjungan;
  late List<Kampus> kampus;

  ListKampusKunjunganController() {
    kampusKunjungan = [];
    kampus = getKampus();
  }

  List<Kampus> getKampus() {
    return kampusApi;
  }
}
