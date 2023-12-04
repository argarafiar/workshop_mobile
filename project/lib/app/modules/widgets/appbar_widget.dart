import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project/app/routes/app_pages.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  AppBarWidget({
    required this.title,
    this.kampusKunjungan,
  });

  final List? kampusKunjungan;
  final String title;

  @override
  Size get preferredSize => Size.fromHeight(56.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      centerTitle: true,
      actions: [
        kampusKunjungan == null
            ? Container()
            : IconButton(
                onPressed: () {
                  Get.toNamed(
                    Routes.KAMPUSTERKUNJUNGI,
                    arguments: kampusKunjungan,
                  );
                },
                icon: Icon(Icons.done_outline),
              ),
      ],
    );
  }
}
