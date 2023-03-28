package com.flutter.project

import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugins.GeneratedPluginRegistrant
import io.flutter.plugins.imagepicker.ImagePickerPlugin

class MainActivity: FlutterActivity() {
    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)

        // register ImagePickerPlugin
        flutterEngine.plugins.add(ImagePickerPlugin())

        GeneratedPluginRegistrant.registerWith(flutterEngine)
    }
}
