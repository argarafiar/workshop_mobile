import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //================================================================ MINGGU 1 =================================================================
              Text(
                "Minggu 1",
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Get.toNamed("/minggu1");
                },
                child: Text("Minggu 1"),
              ),
              SizedBox(height: 20),
              //beri garis
              Divider(
                color: Colors.black,
                thickness: 2,
              ),
              SizedBox(height: 20),
              //================================================================ MINGGU 2 =================================================================

              Text(
                "Minggu 2",
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Get.toNamed("/minggu2");
                    },
                    child: Text("Prima"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Get.toNamed("/ganjilgenap");
                    },
                    child: Text("Ganjil genap"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Get.toNamed("/ganjiln");
                    },
                    child: Text("genap N"),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Divider(
                color: Colors.black,
                thickness: 2,
              ),
              SizedBox(height: 20),
              //================================================================ MINGGU 3 =================================================================

              Text(
                "Minggu 3",
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Get.toNamed("/minggu3");
                    },
                    child: Text("Percobaan"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Get.toNamed("/latihan3");
                    },
                    child: Text("Latihan"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Get.toNamed("/tugas3");
                    },
                    child: Text("Tugas"),
                  ),
                ],
              ),
              Divider(
                color: Colors.black,
                thickness: 2,
              ),
              SizedBox(height: 20),

              //================================================================ MINGGU 4 =================================================================
              Text(
                "Minggu 4",
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Get.toNamed("/minggu4");
                    },
                    child: Text("Percobaan setstate"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Get.toNamed("/minggu4provider");
                    },
                    child: Text("Percobaan provider"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
