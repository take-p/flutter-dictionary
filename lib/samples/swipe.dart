import 'package:flutter/material.dart';

class SwipeSample extends StatelessWidget {
  const SwipeSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onHorizontalDragUpdate: (details) {
        if (details.delta.dx > 18) {
          Navigator.pop(context);
        }
      },
      child: ListView(
        children: [
          ListTile(
            title: const Text("A"),
            onTap: (){},
          ),
          ListTile(
            title: const Text("B"),
            onTap: (){},
          ),
        ],
      ),
    );
  }
}
