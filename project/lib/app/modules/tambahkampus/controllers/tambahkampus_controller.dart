import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import '../../tugasminggu5/controllers/tugasminggu5_controller.dart';
import 'dart:convert';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:flutter/material.dart';

enum ImageType {
  banner,
  foto1,
  foto2,
  foto3,
}

class TambahkampusController extends GetxController {
  //TODO: Implement TambahkampusController
  String nama = "";
  String alamat = "";
  String banner = "";
  String foto1 = "";
  String foto2 = "";
  String foto3 = "";
  String bio = "";
  String hari = "";
  String jam_buka = "";
  String jam_tutup = "";
  String tiket = "";

  File? _banner;
  File? _foto1;
  File? _foto2;
  File? _foto3;

  Future tambahKampus() async {
    List<int> bannerBytes = await _banner!.readAsBytes();
    List<int> foto1Bytes = await _foto1!.readAsBytes();
    List<int> foto2Bytes = await _foto2!.readAsBytes();
    List<int> foto3Bytes = await _foto3!.readAsBytes();

    String bannerBase64 = base64Encode(bannerBytes);
    String foto1Base64 = base64Encode(foto1Bytes);
    String foto2Base64 = base64Encode(foto2Bytes);
    String foto3Base64 = base64Encode(foto3Bytes);

    try {
      var res =
          await http.post(Uri.parse(ApiUrl.baseUrl + "api/kampus/"), body: {
        "nama": nama,
        "alamat": alamat,
        "banner": bannerBase64,
        "foto1": foto1Base64,
        "foto2": foto2Base64,
        "foto3": foto3Base64,
        "bio": bio,
        "hari": hari,
        "jam_buka": jam_buka,
        "jam_tutup": jam_tutup,
        "tiket": tiket,
      });

      if (res.statusCode == 201) {
        Get.snackbar("Berhasil", "Kampus berhasil ditambahkan");
        Get.offAllNamed("/tugasminggu5");
      } else {
        print("Gagal: ${res.statusCode} ${res.body}");
        Get.snackbar("Gagal", "Kampus gagal ditambahkan");
      }
    } catch (e) {
      print("Error: $e");
    }
  }

  //buat method getimage
  Future getImage(ImageType type) async {
    // final picker = ImagePicker();
    // final pickedFile = await picker.pickImage(source: source);
    // if (pickedFile != null) {
    //   _banner = File(pickedFile.path);
    //   print(_banner);
    //   print("Banner berhasil diambil");
    // } else {
    //   print('No image selected.');
    // }

    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      File file = File(pickedFile.path);
      if (type == ImageType.banner) {
        _banner = file;
        print("Banner berhasil diambil");
      } else if (type == ImageType.foto1) {
        _foto1 = file;
        print("Foto 1 berhasil diambil");
      } else if (type == ImageType.foto2) {
        _foto2 = file;
        print("Foto 2 berhasil diambil");
      } else if (type == ImageType.foto3) {
        _foto3 = file;
        print("Foto 3 berhasil diambil");
      }
    }
  }

  Future editKampus(int id) async {
    try {
      var res =
          await http.put(Uri.parse(ApiUrl.baseUrl + "api/kampus/${id}"), body: {
        "nama": nama,
        "alamat": alamat,
        "banner": banner,
        "foto1": foto1,
        "foto2": foto2,
        "foto3": foto3,
        "bio": bio,
        "hari": hari,
        "jam_buka": jam_buka,
        "jam_tutup": jam_tutup,
        "tiket": tiket,
      });

      print(res.body);

      if (res.statusCode == 200) {
        Get.snackbar("Berhasil", "Kampus berhasil diubah");
        Get.offAllNamed("/tugasminggu5");
      } else {
        Get.snackbar("Gagal", "Kampus gagal diubah");
      }
    } catch (e) {
      print("ERROR: $e");
    }
  }
}
