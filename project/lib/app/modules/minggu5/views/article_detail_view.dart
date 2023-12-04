import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:project/app/modules/minggu5/controllers/articledetail_controller.dart';
import 'package:project/app/routes/app_pages.dart';
import '../../widgets/appbar_widget.dart';

class ArticleDetailView extends GetView<ArticleDetailController> {
  ArticleDetailView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        title: 'News App',
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Hero(
              tag: controller.article.urlToImage!,
              child: Image.network(
                controller.article.urlToImage!,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(18),
              child: Column(
                children: [
                  Text(controller.article.description!),
                  Divider(
                    color: Colors.grey,
                  ),
                  Text(controller.article.title!),
                  Divider(
                    color: Colors.grey,
                  ),
                  Text("Date : ${controller.article.publishedAt}"),
                  SizedBox(height: 10),
                  Text("Author : ${controller.article.author}"),
                  Divider(color: Colors.grey),
                  Text(controller.article.content!),
                  SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {
                      Get.toNamed(Routes.ARTICLEWEB,
                          arguments: controller.article.url);
                    },
                    child: Text("Read More"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
