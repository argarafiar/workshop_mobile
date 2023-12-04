import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:project/app/modules/widgets/appbar_widget.dart';
import 'week_section_view.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(title: "Tugas Akhir"),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              for (var i = 0; i < controller.week.length; i++)
                WeekWidget(
                  rootNamed: controller.week[i],
                  sectionTitle: "Minggu ${i + 1}",
                ),
            ],
          ),
        ),
      ),
    );
  }
}
