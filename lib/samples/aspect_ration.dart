import 'package:flutter/material.dart';

class AspectRatioSample extends StatelessWidget {
  const AspectRatioSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AspectRatio(
          aspectRatio: 1/10,
          child: Image.asset("assets/images/lake.jpg")
      ),
    );
  }
}
