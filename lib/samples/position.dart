import 'package:flutter/material.dart';

class PositionSample extends StatelessWidget {
  const PositionSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          left: 0,
          top: 0,
          child: Container(
            width: 100,
            height: 100,
            color: Colors.red,
          ),
        ),
        Positioned(
          left: 50,
          top: 50,
          child: Container(
              width: 100,
              height: 100,
              color: Colors.orange
          ),
        ),
        Positioned(
          left: 100,
          top: 100,
          child: Container(
            width: 100,
            height: 100,
            color: Colors.yellow,
          ),
        ),
        Positioned(
          left: 150,
          top: 150,
          child: Container(
            width: 100,
            height: 100,
            color: Colors.green,
          ),
        ),
        Positioned(
          left: 200,
          top: 200,
          child: Container(
              width: 100,
              height: 100,
              color: Colors.blue,
          ),
        ),
      ],
    );
  }
}
