import 'package:get/get.dart';
import '../services/prima_service.dart';

class PrimaController extends GetxController {
  var counter;
  var text;
  late PrimaService primaService;

  PrimaController() {
    counter = 0.obs;
    text = "".obs;
    primaService = PrimaService(); //composision
  }

  void primaViewer() {
    counter++;
    text.value = "Prima: " + primaService.generatePrimesText(counter.value);
  }
}
