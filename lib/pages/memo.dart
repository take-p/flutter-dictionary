import 'package:flutter/material.dart';

class Memo extends StatelessWidget {
  const Memo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("memo"),),
      body: ListView(
        children: [
          ListTile(
            title: const Text("カメラ"),
            onTap: () {},
          ),
          ListTile(
            title: const Text("マイク"),
            onTap: () {},
          ),
          ListTile(
            title: const Text("GPS"),
            onTap: () {},
          ),
          ListTile(
            title: const Text("bluetooth"),
            onTap: () {},
          ),
        ],
      )
    );
  }
}
