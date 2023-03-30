import 'package:flutter/material.dart';

import 'package:get/get.dart';
import '../../../data/models/minggu5_model_model.dart';

class ArticleDetailView extends GetView {
  ArticleDetailView({Key? key}) : super(key: key);

  final Article article = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('News App'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Hero(
              tag: article.urlToImage ?? "",
              child: Image.network(
                article.urlToImage ?? "",
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(18),
              child: Column(
                children: [
                  Text(article.description ?? ""),
                  Divider(
                    color: Colors.grey,
                  ),
                  Text(article.title),
                  Divider(
                    color: Colors.grey,
                  ),
                  Text("Date : ${article.publishedAt}"),
                  SizedBox(height: 10),
                  Text("Author : ${article.author}"),
                  Divider(color: Colors.grey),
                  Text(article.content ?? ""),
                  SizedBox(height: 10),
                  ElevatedButton(
                      onPressed: () {
                        Get.toNamed('/articleweb', arguments: article.url);
                      },
                      child: Text("Read More")),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
