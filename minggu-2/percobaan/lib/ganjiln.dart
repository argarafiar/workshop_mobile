import 'package:flutter/material.dart';

class Ganjiln extends StatefulWidget {
  const Ganjiln({super.key});

  @override
  State<Ganjiln> createState() => _GanjilnState();
}

class _GanjilnState extends State<Ganjiln> {
  int _counter = 0;
  String text = "";
  void ganjilgenap() {
    setState(
      () {
        _counter++;
        text = "Ganjil: ";
        for (int i = 1; i <= _counter; i++) {
          if (i % 2 == 0 && i % 3 == 0) {
            text += i.toString() + ", ";
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
