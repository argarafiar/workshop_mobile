import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project/app/modules/minggu5/models/article_model.dart';
import 'package:project/app/routes/app_pages.dart';

class CardArticle extends StatelessWidget {
  const CardArticle({Key? key, required this.article}) : super(key: key);
  final ArticleModel article;

  @override
  Widget build(BuildContext context) {
    if (article.urlToImage == "") return Container();
    return ListTile(
      contentPadding:
          const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      leading: Hero(
        tag: article.urlToImage!,
        child: Image.network(
          article.urlToImage!,
          width: 100,
        ),
      ),
      title: Text(article.title!),
      subtitle: Text(article.author!),
      onTap: () => Get.toNamed(Routes.ARTICLEDETAIL, arguments: article),
    );
  }
}
