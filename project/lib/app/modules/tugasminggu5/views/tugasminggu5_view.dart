import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/tugasminggu5_controller.dart';
import 'package:http/http.dart' as http;

class Tugasminggu5View extends GetView<Tugasminggu5Controller> {
  Tugasminggu5View({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.toNamed('/home');
          },
          icon: Icon(Icons.arrow_back),
        ),
        title: const Text('Kampus Surabaya'),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                Get.toNamed("/tambahkampus");
              },
              icon: Icon(Icons.add)),
        ],
      ),
      body: FutureBuilder(
        future: controller.getKampus(),
        builder: (context, snapshot) {
          if (snapshot.hasError) print(snapshot.error);
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    leading: Container(
                      width: 100,
                      height: double.infinity,
                      // color: Colors.amber,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          //pakai image asset
                          image: NetworkImage(
                              ApiUrl.imgUrl + snapshot.data![index]['banner']),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    title: Text(snapshot.data![index]['nama']),
                    subtitle: Text(snapshot.data![index]['alamat']),
                    onTap: () {
                      Get.toNamed(
                        "/detailkampusapi",
                        arguments: snapshot.data![index],
                      );
                    },
                  ),
                );
              },
            );
          }
        },
      ),
    );
  }
}
