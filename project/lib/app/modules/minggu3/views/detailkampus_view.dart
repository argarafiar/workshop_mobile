import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:project/app/modules/minggu3/controllers/detailkampus_controller.dart';
import '../widgets/kampusbanner_view.dart';
import '../widgets/kampusgallery_view.dart';
import '../widgets/kampusinformation_view.dart';

class DetailkampusView extends GetView<DetailkampusController> {
  const DetailkampusView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: context.mediaQuery.padding.top),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              KampusBanner(imageUrl: controller.kampus.banner),
              SizedBox(
                height: 20,
              ),
              Text(
                controller.kampus.nama,
                style: TextStyle(
                  fontFamily: "Lobster",
                  fontSize: 30,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 20,
              ),
              KampusInformation(
                hari: controller.kampus.hari,
                jam: controller.kampus.jam,
                tiket: controller.kampus.tiket,
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Text(controller.kampus.deskripsi,
                    textAlign: TextAlign.center),
              ),
              SizedBox(
                height: 20,
              ),
              KampusGallery(images: controller.kampus.galery),
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
