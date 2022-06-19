import 'package:flutter/material.dart';

class ChipSample extends StatefulWidget {
  const ChipSample({Key? key}) : super(key: key);

  @override
  State<ChipSample> createState() => _ChipSample();
}

class _ChipSample extends State<ChipSample> {
  List<String> emails = ["山田　太郎", "鈴木　一郎", "田中次郎", "佐藤三郎"];
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        ...emails.map((e) =>
          Chip(
            avatar: CircleAvatar(
              child: Text(e.substring(0, 1)),
            ),
            label: Text(e),
            onDeleted: () {
              setState(() {
                emails.remove(e);
              });
            },
          ),
        ),
      ],
    );
  }
}
