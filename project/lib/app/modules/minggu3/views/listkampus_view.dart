import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:project/app/modules/minggu3/controllers/listkampus_controller.dart';
import 'package:project/app/modules/widgets/appbar_widget.dart';
import 'package:project/app/routes/app_pages.dart';

class ListKampusView extends GetView<ListKampusController> {
  const ListKampusView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        title: 'Kampus Surabaya',
      ),
      body: ListView.builder(
        itemCount: controller.kampus.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              leading: Container(
                width: 100,
                height: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(controller.kampus[index].banner),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              title: Text(controller.kampus[index].nama),
              subtitle: Text(controller.kampus[index].alamat),
              onTap: () {
                Get.toNamed(
                  Routes.DETAILKAMPUS,
                  arguments: controller.kampus[index],
                );
              },
            ),
          );
        },
      ),
    );
  }
}
