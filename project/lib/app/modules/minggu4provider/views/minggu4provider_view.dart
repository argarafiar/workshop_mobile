import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/minggu4provider_controller.dart';

class Minggu4providerView extends GetView<Minggu4providerController> {
  const Minggu4providerView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Minggu4providerView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'Minggu4providerView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
