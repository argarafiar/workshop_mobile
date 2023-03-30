import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Tugasminggu5Controller extends GetxController {
  //TODO: Implement Tugasminggu5Controller

  Future<List> getKampus() async {
    var res = await http.get(Uri.parse(ApiUrl.baseUrl + "api/kampus/"));
    return json.decode(res.body);
  }

  Future deleteKampus(int id) async {
    var res = await http.delete(Uri.parse(ApiUrl.baseUrl + "api/kampus/$id"));

    if (res.statusCode == 204) {
      Get.snackbar("Berhasil", "Kampus berhasil dihapus");
      Get.offAllNamed("/tugasminggu5");
    }
  }
}

class ApiUrl {
  static const String baseUrl =
      "https://d648-2001-448a-50e0-4903-35da-a51c-d5a4-7640.ap.ngrok.io/";

  static const String imgUrl = baseUrl + "api/kampus/image/";
}
