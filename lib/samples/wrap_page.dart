import 'package:flutter/material.dart';

class WrapPage extends StatelessWidget {
  const WrapPage({Key? key}) : super(key:key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Wrap(
        children: <Widget>[
          for (var i = 1; i <= 5; i++)
            ElevatedButton(
              onPressed: () => {},
              child: Text("button " + i.toString()),
            )
        ],
      ),
    );
  }
}