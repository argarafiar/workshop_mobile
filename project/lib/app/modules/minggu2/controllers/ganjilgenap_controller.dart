import 'package:get/get.dart';

class GanjilGenapController extends GetxController {
  var counter;
  var text;

  GanjilGenapController() {
    counter = 0.obs;
    text = "".obs;
  }

  void ganjilgenap() {
    counter.value++;
    text.value = counter.value % 2 == 0 ? "Genap" : "Ganjil";
  }
}
