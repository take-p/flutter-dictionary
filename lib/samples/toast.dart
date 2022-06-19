import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class FlutterToastSample extends StatelessWidget {
  const FlutterToastSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          Fluttertoast.showToast(
            msg: "This is a test",
            backgroundColor: Colors.deepOrange,
            textColor: Colors.white,
            fontSize: 16.0,
          );
        },
        child: const Text("Toast"),
      ),
    );
  }
}
