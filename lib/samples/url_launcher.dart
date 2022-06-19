import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LaunchURLSample extends StatelessWidget {
  const LaunchURLSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String _url = "https://flutter.dev/";

    void _launchURL() async => await canLaunch(_url)
      ? await launch(_url)
      : throw "Could not launch $_url";

    return ElevatedButton(
      onPressed: () {
        _launchURL();
      },
      child: const Text("launch url"),
    );
  }
}
