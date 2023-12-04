import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:project/app/modules/minggu5/controllers/articleweb_controller.dart';
import 'package:project/app/modules/widgets/appbar_widget.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ArticleWebView extends GetView<ArticleWebController> {
  ArticleWebView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        title: 'News App',
      ),
      body: WebView(
        backgroundColor: Colors.white,
        javascriptMode: JavascriptMode.unrestricted,
        initialUrl: controller.url,
      ),
    );
  }
}
