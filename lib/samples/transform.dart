import 'package:flutter/material.dart';

class TransformSample extends StatelessWidget {
  const TransformSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform(
      transform: Matrix4.identity()
          ..setEntry(3, 2, 0.001)
          ..rotateX(0.01 * 1)
          ..rotateY(-0.01 * 1),
      alignment: FractionalOffset.center,
      child: GestureDetector(
        child: const Text("hogehoge"),
      )
    );
  }
}
