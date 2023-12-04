import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:project/app/modules/minggu5/widgets/cardarticle_widget.dart';
import '../controllers/article_controller.dart';
import '../../widgets/appbar_widget.dart';

class ArticleView extends GetView<ArticlesController> {
  ArticleView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        title: 'News App',
      ),
      body: FutureBuilder(
        future: controller.articles,
        builder: (context, snapshot) {
          if (snapshot.connectionState != ConnectionState.done) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else {
            if (snapshot.hasData) {
              return ListView.builder(
                shrinkWrap: true,
                itemCount: snapshot.data?.length,
                itemBuilder: (context, index) {
                  return CardArticle(article: snapshot.data![index]);
                },
              );
            } else if (snapshot.hasError) {
              Get.back();
              Get.snackbar("Maaf", "Terjadi kesalahan");
              return Container();
            } else {
              return Center(
                child: Text("Tidak ada data"),
              );
            }
          }
        },
      ),
    );
  }
}
