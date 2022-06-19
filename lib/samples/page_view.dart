import 'package:flutter/material.dart';

class PageViewSample extends StatelessWidget {
  const PageViewSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView(
      scrollDirection: Axis.horizontal,
      children: [
        for (int i = 1; i <= 5; i++)
          Center(
            child: CircleAvatar(
              radius: 100,
              child: Text(
                "$i",
                style: const TextStyle(fontSize: 100),
              ),
            ),
          ),
      ],
    );
  }
}
