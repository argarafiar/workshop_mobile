import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/minggu2_controller.dart';

class Minggu2View extends StatefulWidget {
  const Minggu2View({super.key});

  @override
  State<Minggu2View> createState() => _Minggu2ViewState();
}

class _Minggu2ViewState extends State<Minggu2View> {
  int _counter = 0;
  String text = "";
  int count = 0;
  void ganjilgenap() {
    setState(
      () {
        _counter++;
        text = "Prima: ";
        for (int i = 1; i <= _counter; i++) {
          count = 0;
          for (int j = 1; j <= i; j++) {
            if (i % j == 0) {
              count++;
            }
          }
          if (count == 2) {
            text += "$i, ";
          }
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Ganjil Genap'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'You have pushed the button this many times:',
              ),
              Text(
                '$_counter',
                style: Theme.of(context).textTheme.headline4,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                text,
                style: TextStyle(fontSize: 25),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: ganjilgenap,
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
