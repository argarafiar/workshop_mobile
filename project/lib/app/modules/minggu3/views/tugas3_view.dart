import 'package:flutter/material.dart';

import 'package:get/get.dart';
import '../../../data/minggu3/kampus_model.dart';

class Tugas3View extends GetView {
  const Tugas3View({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Kampus Surabaya'),
        ),
        body: ListView.builder(
          itemCount: kampus.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                leading: Container(
                  width: 100,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      //pakai image asset
                      image: AssetImage(kampus[index].banner),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                title: Text(kampus[index].nama),
                subtitle: Text(kampus[index].alamat),
                onTap: () {
                  Get.toNamed(
                    "/detailkampus",
                    arguments: kampus[index],
                  );
                },
              ),
            );
          },
        ));
  }
}
