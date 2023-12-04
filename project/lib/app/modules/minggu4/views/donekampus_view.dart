import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:project/app/modules/minggu4/controllers/kampusterkunjungi_controller.dart';

class KampusTerkunjungiView extends GetView<KampusTerkunjungiController> {
  KampusTerkunjungiView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kampus Telah Dikunjungi'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: controller.kampuslist.length,
        itemBuilder: (context, index) {
          return Card(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(controller.kampuslist[index].nama),
                Icon(Icons.done_outline),
              ],
            ),
          );
        },
      ),
    );
  }
}
