import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../controllers/tugasminggu5_controller.dart';

class DetailkampusapiView extends GetView {
  DetailkampusapiView({Key? key}) : super(key: key);
  var controller = Get.put(Tugasminggu5Controller());
  @override
  Widget build(BuildContext context) {
    var data = Get.arguments;
    double paddingTop = context.mediaQuery.padding.top;

    List<Widget> listgalery = [
      for (var i = 1; i < 4; i++)
        Container(
          width: Get.width,
          height: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              //jika i == 0 maka pakai foto1 jika tidak maka pakai foto2
              image: NetworkImage(ApiUrl.imgUrl + data['foto$i']),
              fit: BoxFit.cover,
            ),
          ),
        ),
    ];
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: paddingTop),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: Get.width,
                height: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(ApiUrl.imgUrl + data['banner']),
                    fit: BoxFit.cover,
                  ),
                  color: Colors.amber,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "${data['nama']}",
                style: TextStyle(
                  fontFamily: "Lobster",
                  fontSize: 30,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 100,
                    child: Column(
                      children: [
                        Icon(Icons.calendar_today_rounded),
                        Text(data['hari']),
                      ],
                    ),
                  ),
                  Container(
                    width: 100,
                    child: Column(
                      children: [
                        Icon(Icons.access_time),
                        Text(data['jam_buka'] + " - " + data['jam_tutup']),
                      ],
                    ),
                  ),
                  Container(
                    width: 100,
                    child: Column(
                      children: [
                        Icon(Icons.attach_money),
                        Text(data['tiket']),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Text(data['bio'], textAlign: TextAlign.center),
              ),
              SizedBox(
                height: 20,
              ),
              CarouselSlider(
                items: listgalery,
                options: CarouselOptions(
                  //beri jarak antar item
                  enlargeCenterPage: true,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    Get.toNamed("/editkampus", arguments: data);
                  },
                  child: Text("Edit Kampus")),
              //ganti background color
              ElevatedButton(
                onPressed: () {
                  controller.deleteKampus(data['id']);
                },
                child: Text("Hapus Kampus"),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
