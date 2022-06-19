import 'package:flutter/material.dart';

class PlaceholderSample extends StatelessWidget {
  const PlaceholderSample ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          margin: const EdgeInsets.all(10),
          child: const Placeholder(
            fallbackHeight: 200,
            color: Colors.blue,
            strokeWidth: 5,
          ),
        ),
        for (int i = 0; i < 5; i++)
          Container(
            margin: const EdgeInsets.all(10),
            child: Image.asset("assets/images/lake.jpg")
          )
      ],
    );
  }
}
