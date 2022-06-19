import 'package:flutter/material.dart';

class ClipRRectPage extends StatelessWidget {
  const ClipRRectPage ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Center(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(25),
            child: Container(
              color: Colors.orange,
              height: 250,
              width: 250,
            ),
          ),
        ),
        Center(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.circular(100),
            ),
            height: 250,
            width: 250,
          ),
        ),
      ],
    );
  }
}
