import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:project/app/modules/minggu4/views/donekampus_view.dart';
import 'package:project/app/modules/minggu4/views/listkampus_view.dart';

import '../controllers/minggu4_controller.dart';
import '../../../data/minggu3/kampus_model.dart';

class Minggu4View extends StatefulWidget {
  Minggu4View({super.key});

  @override
  State<Minggu4View> createState() => _Minggu4ViewState();
}

class _Minggu4ViewState extends State<Minggu4View> {
  final List<Kampus> doneKampusList = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kampus Surabaya'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return DonekampusView(kampuslist: doneKampusList);
                  },
                ),
              );
            },
            icon: Icon(Icons.done_outline),
          ),
        ],
      ),
      body: ListKampusView(doneKampusList: doneKampusList),
    );
  }
}
