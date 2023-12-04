import 'package:flutter/material.dart';
import 'package:project/app/modules/widgets/appbar_widget.dart';

class Minggu1View extends StatelessWidget {
  const Minggu1View({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        title: 'Minggu 1',
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
