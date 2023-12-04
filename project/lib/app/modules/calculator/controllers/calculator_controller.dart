import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:math_expressions/math_expressions.dart';

class CalculatorController extends GetxController {
  late RxString input;
  late RxString output;
  late RxString _operator;
  late RxBool hide;
  late RxDouble size;
  late Color color;
  late RxString temp;
  late Parser p;

  CalculatorController() {
    input = ''.obs;
    output = ''.obs;
    _operator = ''.obs;
    hide = false.obs;
    size = 34.0.obs;
    color = Colors.grey;
    temp = ''.obs;
    p = Parser();
  }

  void buttonClick(String value) {
    if (value == 'AC') {
      inputReset();
    } else if (value == "<") {
      if (input.isNotEmpty)
        input.value = input.substring(0, input.value.length - 1);
    } else if (value == "=") {
      if (input.value.endsWith('+') ||
          input.value.endsWith('-') ||
          input.value.endsWith('x') ||
          input.value.endsWith('/') ||
          input.value.endsWith('%') ||
          input.value.isEmpty) return;
      temp.value = input.value.replaceAll('x', '*');
      Expression exp = p.parse(temp.value);
      ContextModel cm = ContextModel();
      var finalResult = exp.evaluate(EvaluationType.REAL, cm);
      output.value = finalResult.toString();
      if (output.value.endsWith('.0')) {
        output.value = output.value.substring(0, output.value.length - 2);
      }
      input.value = output.value;
      hide.value = true;
      size.value = 50;
      color = Colors.black;
    } else {
      input.value += value;
      hide.value = false;
      size.value = 34;
      color = Colors.grey;
    }
  }

  void inputReset() {
    input.value = '';
    output.value = '';
    _operator.value = '';
  }
}
