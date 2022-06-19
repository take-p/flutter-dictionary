import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  const Buttons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          TextButton(
            onPressed: () {},
            child: const Text("TextButton"),
          ),
          OutlinedButton(
            onPressed: () {},
            child: const Text("OutlinedButton"),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text("Elevatedbutton"),
          ),
          TextButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.thumb_up),
            label: const Text("TextButton.icon")
          ),
          OutlinedButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.thumb_up),
            label: const Text("OutlinedButton.icon")
          ),
          ElevatedButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.thumb_up),
            label: const Text("ElevatedButton.icon")
          ),
          BackButton(
            onPressed: () {},
            color: Colors.green,
          ),
          CloseButton(
            onPressed: () {},
            color: Colors.red,
          ),
        ],
      )
    );
  }
}
