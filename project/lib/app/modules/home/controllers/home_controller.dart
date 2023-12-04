import 'package:get/get.dart';
import '../data/home_data.dart';

class HomeController extends GetxController {
  late List week;

  HomeController() {
    week = getWeek();
  }

  List getWeek() {
    return weekApi;
  }
}
