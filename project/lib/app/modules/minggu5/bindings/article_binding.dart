import 'package:get/get.dart';
import '../controllers/articledetail_controller.dart';
import '../controllers/article_controller.dart';
import '../controllers/articleweb_controller.dart';

class ArticleBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ArticlesController>(
      () => ArticlesController(),
    );
    Get.lazyPut<ArticleDetailController>(
      () => ArticleDetailController(),
    );
    Get.lazyPut<ArticleWebController>(
      () => ArticleWebController(),
    );
  }
}
