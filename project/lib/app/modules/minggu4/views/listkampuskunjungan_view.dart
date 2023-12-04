import 'package:flutter/material.dart';

import 'package:get/get.dart';
import '../widgets/listkampus_view.dart';
import '../../widgets/appbar_widget.dart';

import '../controllers/listkampus_state_controller.dart';

class ListKampusKunjunganView extends GetView<ListKampusKunjunganController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
          title: 'Kampus Surabaya',
          kampusKunjungan: controller.kampusKunjungan),
      body: ListKampusView(
        doneKampusList: controller.kampusKunjungan,
        kampus: controller.kampus,
      ),
    );
  }
}
