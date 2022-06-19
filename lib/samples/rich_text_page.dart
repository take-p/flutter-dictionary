import 'package:flutter/material.dart';

class RichTextPage extends StatelessWidget {
  const RichTextPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: const TextSpan(
        style: TextStyle(
            fontSize: 20, color: Colors.black
        ),
        children: <TextSpan>[
          TextSpan(text: "This is an example of the "),
          TextSpan(
            text: "RichText ",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),
          TextSpan(text: "Widget from "),
          TextSpan(
            text: "Flutter",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }
}
