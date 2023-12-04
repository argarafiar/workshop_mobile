import 'package:get/get.dart';

class ArticleWebController extends GetxController {
  late String url;

  ArticleWebController() {
    url = getUrl();
  }

  String getUrl() {
    return Get.arguments;
  }
}
