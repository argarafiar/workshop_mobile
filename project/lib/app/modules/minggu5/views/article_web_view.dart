import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ArticleWebView extends GetView {
  ArticleWebView({Key? key}) : super(key: key);
  final String url = Get.arguments;

  late WebViewController webViewController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('News App'),
        centerTitle: true,
      ),
      body: WebView(
        javascriptMode: JavascriptMode.unrestricted,
        initialUrl: url,
        onWebViewCreated: (controller) {
          this.webViewController = controller;
        },
      ),
    );
  }
}
