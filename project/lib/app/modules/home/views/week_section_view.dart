import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WeekWidget extends StatelessWidget {
  final List<Map> rootNamed;
  final String sectionTitle;
  static const double ySpace = 20;

  const WeekWidget({
    required this.rootNamed,
    required this.sectionTitle,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          sectionTitle,
          style: const TextStyle(
            fontSize: 25,
          ),
        ),
        const SizedBox(height: ySpace),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            for (var item in rootNamed)
              ElevatedButton(
                onPressed: () {
                  Get.toNamed(item["routes"]);
                },
                child: Text(item["title"]),
              ),
          ],
        ),
        const SizedBox(height: ySpace),
        const Divider(
          color: Colors.black,
          thickness: 2,
        ),
        const SizedBox(height: ySpace),
      ],
    );
  }
}
