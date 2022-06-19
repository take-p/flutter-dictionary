import 'package:flutter/material.dart';

class GestureDetectorSample extends StatefulWidget {
  const GestureDetectorSample({Key? key}) : super(key: key);

  @override
  _GestureDetectorSampleState createState() => _GestureDetectorSampleState();
}

class _GestureDetectorSampleState extends State<GestureDetectorSample> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
          setState(() {
            _counter++;
          });
        },
        child: Container(
          height: 200,
          width: 200,
          color: Colors.blue,
          child: Center(
            child: Text(
              _counter.toString(),
              style: const TextStyle(
                color: Colors.white,
                fontSize: 30,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
