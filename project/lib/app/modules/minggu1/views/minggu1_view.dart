import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/minggu1_controller.dart';

class Minggu1View extends GetView<Minggu1Controller> {
  const Minggu1View({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Minggu1View'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'Hello World',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
