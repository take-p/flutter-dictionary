import 'package:flutter/material.dart';

class FlexiblePage extends StatelessWidget {
  const FlexiblePage({Key? key}) : super(key:key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Flexible(
          flex: 1,
          child: Container(
            color: Colors.orangeAccent,
          ),
        ),
        Flexible(
          flex: 2,
          child: Container(
            color: Colors.lightBlueAccent,
          ),
        ),
        Flexible(
          flex: 3,
          child: Container(
            color: Colors.blueAccent,
          ),
        ),
      ],
    );
  }
}