import 'package:get/get.dart';
import 'package:project/app/modules/minggu5/models/article_model.dart';

class ArticleDetailController extends GetxController {
  late ArticleModel article;

  ArticleDetailController() {
    article = getArticle();
  }

  ArticleModel getArticle() {
    return Get.arguments;
  }
}
