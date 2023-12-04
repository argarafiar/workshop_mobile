import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
  final String text;
  final Color bgColor;
  final Color tColor;
  final bool isUnique;
  final Function(String) onPressed;

  const CalculatorButton({
    required this.text,
    required this.bgColor,
    required this.tColor,
    required this.isUnique,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(8),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: isUnique
                ? CircleBorder()
                : RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
            padding: EdgeInsets.all(20),
            backgroundColor: bgColor,
          ),
          onPressed: () {
            onPressed(text);
          },
          child: Text(
            text,
            style: TextStyle(
              fontSize: 22,
              color: tColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
