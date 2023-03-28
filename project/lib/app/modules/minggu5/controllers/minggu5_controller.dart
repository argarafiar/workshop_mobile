import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import '../../../data/models/minggu5_model_model.dart';

class Minggu5Controller extends GetxController {
  //TODO: Implement Minggu5Controller
}

class ApiService {
  static final String _baseUrl = 'https://newsap.org/v2/';
  static final String _apiKey = 'c9d332f076bb461e9a81823829c91779';
  static final String _category = 'business';
  static final String _country = 'id';

  Future<UserModel> topHeadLines() async {
    // final res = await http.get(Uri.parse(_baseUrl +
    //     "top-headlines?country=$_country&category=$_category&apiKey=$_apiKey"));
    final res = await http.get(
      Uri.parse(
          "https://newsapi.org/v2/top-headlines?country=id&category=business&apiKey=c9d332f076bb461e9a81823829c91779"),
    );

    if (res.statusCode == 200) {
      // print("res.body: ${res.body}");
      return UserModel.fromJson(json.decode(res.body));
    } else {
      throw Exception('Failed to load data');
    }
  }
}
