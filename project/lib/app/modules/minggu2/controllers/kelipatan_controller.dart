import 'package:get/get.dart';

class KelipatanController extends GetxController {
  var counter;
  var text;

  KelipatanController() {
    counter = 0.obs;
    text = "".obs;
  }

  void kelipatan() {
    counter.value++;
    text.value = "Kelipatan: ";
    for (int i = 1; i <= counter.value; i++) {
      if (i % 6 == 0) {
        text.value += i.toString() + ", ";
      }
    }
  }
}
