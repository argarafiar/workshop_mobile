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
    //kirim gambar ke server
    try {
      var request = http.MultipartRequest(
          "POST", Uri.parse(ApiUrl.baseUrl + "api/kampus"));
      request.fields['nama'] = nama;
      request.fields['alamat'] = alamat;
      request.files
          .add(await http.MultipartFile.fromPath("banner", _banner!.path));
      request.files
          .add(await http.MultipartFile.fromPath("foto1", _foto1!.path));
      request.files
          .add(await http.MultipartFile.fromPath("foto2", _foto2!.path));
      request.files
          .add(await http.MultipartFile.fromPath("foto3", _foto3!.path));
      request.fields['bio'] = bio;
      request.fields['hari'] = hari;
      request.fields['jam_buka'] = jam_buka;
      request.fields['jam_tutup'] = jam_tutup;
      request.fields['tiket'] = tiket;

      var response = await request.send();

      if (response.statusCode == 201) {
        print("Kampus berhasil ditambahkan");
        Get.snackbar("Berhasil", "kampus berhasil ditambahkan");
        Get.offAllNamed("/tugasminggu5");
      } else {
        print("Kampus gagal ditambahkan");
        Get.snackbar("Gagal", "kampus gagal ditambahkan");
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
        return Image.file(_banner!);
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
      //update data
      var request = http.MultipartRequest(
          "PUT", Uri.parse(ApiUrl.baseUrl + "api/kampus/$id/"));
      request.fields['nama'] = nama;
      request.fields['alamat'] = alamat;
      request.fields['bio'] = bio;
      request.fields['hari'] = hari;
      request.fields['jam_buka'] = jam_buka;
      request.fields['jam_tutup'] = jam_tutup;
      request.fields['tiket'] = tiket;
      request.files
          .add(await http.MultipartFile.fromPath("banner", _banner!.path));
      request.files
          .add(await http.MultipartFile.fromPath("foto1", _foto1!.path));
      request.files
          .add(await http.MultipartFile.fromPath("foto2", _foto2!.path));
      request.files
          .add(await http.MultipartFile.fromPath("foto3", _foto3!.path));

      print(request.fields);
      //kirim request
      var res = await request.send();

      if (res.statusCode == 200) {
        Get.snackbar("Berhasil", "Kampus berhasil diubah");
        Get.offAllNamed("/tugasminggu5");
      } else {
        Get.snackbar("Gagal", "Kampus gagal diubah");
        print(await res.stream.bytesToString());
      }
    } catch (e) {
      print("ERROR: $e");
    }
  }
}
