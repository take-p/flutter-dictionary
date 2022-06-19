import 'package:flutter/material.dart';


class SpreadOperator extends StatelessWidget {
  const SpreadOperator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var allButtons = [];
    for (var i = 2; i < 5; i++) {
      allButtons.add(
        ElevatedButton(
          onPressed: () {},
          child: Text("Button " + i.toString()),
          style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.orange)),
        )
      );
    }

    return Center(
      child: Column(
        children: [
          ElevatedButton(
            onPressed: () {},
            child: const Text("Button 1"),
          ),
          ...allButtons, // spread operator
        ],
      ),
    );
  }
}