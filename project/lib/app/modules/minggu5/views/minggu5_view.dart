import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/minggu5_controller.dart';
import '../../../data/models/minggu5_model_model.dart';

class Minggu5View extends GetView<Minggu5Controller> {
  const Minggu5View({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('News App'),
        centerTitle: true,
      ),
      body: ArticleListPage(),
    );
  }
}

class ArticleListPage extends StatefulWidget {
  const ArticleListPage({super.key});

  @override
  State<ArticleListPage> createState() => _ArticleListPageState();
}

class _ArticleListPageState extends State<ArticleListPage> {
  late Future<UserModel> _article;
  var controller = Get.put(ApiService());

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _article = controller.topHeadLines();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _article,
      builder: (context, snapshot) {
        var state = snapshot.connectionState;
        if (state != ConnectionState.done) {
          return Center(
            child: CircularProgressIndicator(),
          );
        } else {
          if (snapshot.hasData) {
            //lihat isi data snapshot berupa String
            debugPrint("snapshot.data: ${snapshot.data!.articles}");
            return ListView.builder(
              shrinkWrap: true,
              itemCount: snapshot.data?.articles.length,
              itemBuilder: (context, index) {
                var article = snapshot.data?.articles[index];
                return CardArticle(article: article!);
              },
            );
          } else if (snapshot.hasError) {
            return Center(
              child: Text(snapshot.error.toString()),
            );
          } else {
            return Center(
              child: Text("No Data"),
            );
          }
        }
      },
    );
  }
}

class CardArticle extends StatelessWidget {
  const CardArticle({Key? key, required this.article}) : super(key: key);
  final Article article;
  @override
  Widget build(BuildContext context) {
    // cek isi article
    debugPrint("article: $article");
    return ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      leading: Hero(
        tag: article.urlToImage, //article.urlToImage,
        child: Image.network(
          article.urlToImage,
          width: 100,
        ),
      ),
      title: Text(article.title),
      subtitle: Text(article.author),
      onTap: () => Get.toNamed('/articledetail', arguments: article),
    );
    // return Container(
    //   width: 100,
    //   height: 100,
    //   color: Colors.amber,
    // );
  }
}
