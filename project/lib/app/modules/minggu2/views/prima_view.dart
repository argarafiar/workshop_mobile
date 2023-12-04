import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:project/app/modules/widgets/appbar_widget.dart';

import '../controllers/prima_controller.dart';

class PrimaView extends GetView<PrimaController> {
  const PrimaView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBarWidget(
          title: 'Prima',
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'You have pushed the button this many times:',
              ),
              Obx(
                () => Text(
                  controller.counter.toString(),
                  style: Theme.of(context).textTheme.headline4,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Obx(
                () => Text(
                  controller.text.value,
                  style: TextStyle(fontSize: 25),
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            controller.primaViewer();
          },
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
