import 'package:flutter/material.dart';

import 'package:get/get.dart';

class GanjilgenapView extends StatefulWidget {
  const GanjilgenapView({super.key});

  @override
  State<GanjilgenapView> createState() => _GanjilgenapViewState();
}

class _GanjilgenapViewState extends State<GanjilgenapView> {
  int _counter = 0;
  String text = "";
  void ganjilgenap() {
    setState(
      () {
        _counter++;

        text = _counter % 2 == 0 ? "Genap" : "Ganjil";
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Ganjil Genap'),
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
