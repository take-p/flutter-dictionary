import 'package:flutter/material.dart';

class DraggableScrollableSheetSample extends StatelessWidget {
  const DraggableScrollableSheetSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.1,
      minChildSize: 0.1,
      maxChildSize: 0.6,
      builder: (BuildContext context, myScrollController) =>
          _BottomAppBar(controller: myScrollController),
    );
  }
}

class _BottomAppBar extends StatelessWidget {
  const _BottomAppBar({Key? key, dynamic controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          title: const Text("hogehoge"),
          onTap: () {},
        ),
        ListTile(
          title: const Text("fugafuga"),
          onTap: () {},
        ),
        ListTile(
          title: const Text("piyopiyo"),
          onTap: () {},
        )
      ],
    );
  }
}
