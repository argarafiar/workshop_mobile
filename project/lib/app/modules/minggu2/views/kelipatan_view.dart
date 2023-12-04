import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:project/app/modules/widgets/appbar_widget.dart';
import '../controllers/kelipatan_controller.dart';

class KelipatanView extends GetView<KelipatanController> {
  const KelipatanView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBarWidget(
          title: 'Kelipatan',
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'You have pushed the button this many times:',
              ),
              Obx(
                () => Text(
                  controller.counter.value.toString(),
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
            controller.kelipatan();
          },
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
