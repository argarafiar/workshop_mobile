import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project/app/modules/calculator/controllers/calculator_controller.dart';
import 'package:project/app/modules/calculator/widgets/calculatorbutton_widget.dart';
import 'package:project/app/modules/calculator/widgets/display_widget.dart';
import '../data/button_data.dart';

class CalculatorView extends GetView<CalculatorController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: Get.mediaQuery.padding.top,
          ),
          Obx(() => DisplayWidget(
                hide: controller.hide.value,
                input: controller.input.value,
                output: controller.output.value,
                size: controller.size.value,
                color: controller.color,
              )),
          for (var row in buttonRows)
            Row(
              children: [
                for (var btn in row)
                  CalculatorButton(
                    text: btn['text']!,
                    bgColor: btn['bgColor']!,
                    tColor: btn['tColor']!,
                    isUnique: btn['isUnique']!,
                    onPressed: controller.buttonClick,
                  ),
              ],
            ),
        ],
      ),
    );
  }
}
