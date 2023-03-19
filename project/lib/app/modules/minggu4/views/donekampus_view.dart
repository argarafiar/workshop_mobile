import 'package:flutter/material.dart';

import 'package:get/get.dart';
import '../../../data/minggu3/kampus_model.dart';

class DonekampusView extends GetView {
  DonekampusView({
    Key? key,
    required this.kampuslist,
  }) : super(key: key);

  final List<Kampus> kampuslist;

  @override
  Widget build(BuildContext context) {
    print(kampuslist);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kampus Telah Dikunjungi'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: kampuslist.length,
        itemBuilder: (context, index) {
          final Kampus kampus = kampuslist[index];
          return Card(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(kampus.nama),
                Icon(Icons.done_outline),
              ],
            ),
          );
        },
      ),
    );
  }
}
