import 'package:flutter/material.dart';
import './model/kampus_model.dart';
import 'donekampusview.dart';
import './listkampusview.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  // final List<Kampus> doneKampusList = [];
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
                    return DoneKampusView();
                  },
                ),
              );
            },
            icon: Icon(Icons.done_outline),
          ),
        ],
      ),
      body: ListKampusView(),
    );
  }
}
