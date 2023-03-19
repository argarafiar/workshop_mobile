import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './provider/done_kampus_provider.dart';
import './mainview.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => DoneKampusProvider(),
      child: MaterialApp(
        home: MainView(),
      ),
    );
  }
}
