import 'package:flutter/material.dart';

class Help extends StatelessWidget {
  const Help({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(""),),
      body: ListView(
        children: [
          ListTile(
            title: const Text("pubspec.yamlが反映されない"),
            subtitle: const Text("エミュレーターを再起動してみよう"),
            onTap: () {},
          ),
          ListTile(
            title: const Text("アプリのビルドができない"),
            subtitle: const Text("\$flutter clear"),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
