import 'package:flutter/material.dart';

class DisplayWidget extends StatelessWidget {
  const DisplayWidget({
    super.key,
    required this.hide,
    required this.input,
    required this.output,
    required this.size,
    required this.color,
  });

  final bool hide;
  final String input;
  final String output;
  final double size;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.all(12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              hide ? '' : input,
              style: TextStyle(fontSize: 48, color: Colors.black),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              output,
              style: TextStyle(fontSize: size, color: color),
            ),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
