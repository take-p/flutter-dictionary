import 'package:flutter/material.dart';

class MediaQuerySample extends StatelessWidget {
  const MediaQuerySample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double height = size.height;
    double width = size.width;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Text(
          "Height: $height width: $width",
          style: const TextStyle(
            fontSize: 40,
          ),
        ),
      ),
    );
  }
}
