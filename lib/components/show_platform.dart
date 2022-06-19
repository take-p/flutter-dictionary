import 'package:flutter/material.dart';
import 'dart:io';

class ShowPlatform extends StatelessWidget {
  const ShowPlatform({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (Platform.isIOS) {
      return Row(
        children: const [
          Icon(Icons.smartphone),
          Text("This platform is iOS"),
        ]
      );
    } else if (Platform.isAndroid) {
      return Row(
        children: const [
          Icon(Icons.smartphone),
          Text("This platform is Android"),
        ]
      );
    } else if (Platform.isMacOS) {
      return Row(
        children: const [
          Icon(Icons.desktop_mac),
          Icon(Icons.laptop_mac),
          Text("This platform is MacOS"),
        ],
      );
    } else if (Platform.isWindows) {
      return Row(
        children: const [
          Icon(Icons.smartphone),
          Text("This platform is Windows"),
        ],
      );
    } else if (Platform.isLinux) {
      return Row(
        children: const [
          Icon(Icons.smartphone),
          Text("This platform is Linux"),
        ],
      );
    } else {
      return Row(
        children: const [
          Icon(Icons.smartphone),
          Text("This platform is web?")
        ],
      );
    }
  }
}
