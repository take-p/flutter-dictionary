import 'package:flutter/material.dart';

class ExpandedPage extends StatelessWidget {
  const ExpandedPage({Key? key}) : super(key:key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 100,
          child: Container(
            color: Colors.orangeAccent,
          ),
        ),
        Expanded(
          flex: 2,
          child: Container(
            color: Colors.lightBlueAccent,
            height: 100,
          ),
        ),
        SizedBox(
          height: 100,
          child: Container(
            color: Colors.blueAccent,
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            color: Colors.blueGrey,
            height: 100,
          )
        )
      ],
    );
  }
}