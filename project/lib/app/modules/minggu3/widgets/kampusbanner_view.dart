import 'package:flutter/material.dart';
import 'package:get/get.dart';

class KampusBanner extends StatelessWidget {
  const KampusBanner({
    super.key,
    required this.imageUrl,
  });

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: 200,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(imageUrl),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
