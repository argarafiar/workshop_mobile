import 'package:flutter/material.dart';

class KampusInformation extends StatelessWidget {
  const KampusInformation({
    super.key,
    required this.hari,
    required this.jam,
    required this.tiket,
  });

  final String hari;
  final String jam;
  final String tiket;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          width: 100,
          child: Column(
            children: [
              Icon(Icons.calendar_today_rounded),
              Text(hari),
            ],
          ),
        ),
        Container(
          width: 100,
          child: Column(
            children: [
              Icon(Icons.access_time),
              Text(jam),
            ],
          ),
        ),
        Container(
          width: 100,
          child: Column(
            children: [
              Icon(Icons.attach_money),
              Text(tiket),
            ],
          ),
        ),
      ],
    );
  }
}
