import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:get/get.dart';

class KampusGallery extends StatelessWidget {
  const KampusGallery({
    super.key,
    required this.images,
  });

  final List images;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: [
        for (var i = 0; i < images.length; i++)
          Container(
            width: Get.width,
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: AssetImage(images[i]),
                fit: BoxFit.cover,
              ),
            ),
          ),
      ],
      options: CarouselOptions(
        enlargeCenterPage: true,
      ),
    );
  }
}
