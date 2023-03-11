import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:carousel_slider/carousel_slider.dart';

class DetailkampusView extends GetView {
  const DetailkampusView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    //ambil argument dari halaman sebelumnya
    var data = Get.arguments;
    double paddingTop = context.mediaQuery.padding.top;
    //buat list of widget
    List<Widget> listgalery = [
      for (var i = 0; i < data["galery"].length; i++)
        Container(
          width: Get.width,
          height: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              image: AssetImage(data["galery"][i]),
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
                    image: AssetImage(data["banner"]),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "${data["nama"]}",
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
                        Text(data["hari"]),
                      ],
                    ),
                  ),
                  Container(
                    width: 100,
                    child: Column(
                      children: [
                        Icon(Icons.access_time),
                        Text(data["jam"]),
                      ],
                    ),
                  ),
                  Container(
                    width: 100,
                    child: Column(
                      children: [
                        Icon(Icons.attach_money),
                        Text(data["tiket"]),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Text(data["deskripsi"], textAlign: TextAlign.center),
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
            ],
          ),
        ),
      ),
    );
  }
}
