import 'package:flutter/material.dart';

enum Platform {
  android,
  ios,
  macos,
  windows,
  linux,

}

class Sample {
  Widget widget;
  String title;
  String source;
  String imagePath;
  bool isEnable;
  List<Platform> supportedPlatform;
  List<String> tags = [];

  Sample({
    required this.widget,
    required this.title,
    required this.source,
    this.imagePath = "assets/images/flutter_logo.png",
    this.isEnable = true,
    this.supportedPlatform = Platform.values,
    this.tags = const [],
  });
  /*Sample(
    this.widget,
    this.title,
    [
      this.source = "",
      this.isEnable = true,
      this.imagePath = "assets/images/flutter_logo.png"
    ]
  );*/
}