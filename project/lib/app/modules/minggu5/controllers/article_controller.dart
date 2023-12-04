import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:project/app/modules/minggu5/data/urlapi_data.dart';
import '../models/article_model.dart';

class ArticlesController extends GetxController {
  late Future<List<ArticleModel>> articles;

  ArticlesController() {
    articles = getArticles();
  }

  Future<List<ArticleModel>> getArticles() async {
    try {
      final response = await http.get(Uri.parse(UrlApi.topHeadlines));
      if (response.statusCode == 200) {
        final jsonResponse = json.decode(response.body);
        final article = jsonResponse["articles"];
        return (article as List).map((e) => ArticleModel.fromJson(e)).toList();
      } else {
        Get.snackbar("Maaf", "Gagal mendapatkan data");
        return [];
      }
    } catch (e) {
      print("Error fetching articles: ${e.toString()}");
      return [];
    }
  }
}
