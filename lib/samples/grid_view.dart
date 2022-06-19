import 'package:flutter/material.dart';

class GridViewSample extends StatelessWidget {
  const GridViewSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
      ),
      children: [
        for (int i = 1; i <= 30; i++)
          Container(
            margin: const EdgeInsets.all(10),
            child: Stack(
              children: [
                Image.asset("assets/images/logo.png"),
                Center(
                  child: CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white,
                    child: Text(
                      i.toString(),
                      style: const TextStyle(fontSize: 30),
                    ),
                  )
                ),
              ],
            ),
          )
      ],
    );
  }
}
