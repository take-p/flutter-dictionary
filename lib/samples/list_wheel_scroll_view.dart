import 'package:flutter/material.dart';

class ListWheelScrollViewSample extends StatelessWidget {
  const ListWheelScrollViewSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListWheelScrollView(
      itemExtent: 250,
      diameterRatio: 1.65,
        children: [
          for(int i = 1; i <= 30; i++)
            Stack(
              children: [
                Center(child: Image.asset("assets/images/logo.png"),),
                Center(
                  child: CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white,
                    child: Text(i.toString(), style: const TextStyle(fontSize: 30)),
                )
                )
              ],
            )
        ]
    );
  }
}
