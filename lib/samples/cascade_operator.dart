import 'package:flutter/material.dart';

class CascadeOperatorSampleX {
  final List<String> _array = [];
  List<String> getArray() {
    return _array;
  }

  void addA() {
    _array.add("A");
  }
  void addB() {
    _array.add("B");
  }
  void addC() {
    _array.add("C");
  }
}

class CascadeOperatorSample extends StatefulWidget {
  const CascadeOperatorSample({Key? key}) : super(key: key);

  @override
  State<CascadeOperatorSample> createState() => _CascadeOperatorSample();
}

class _CascadeOperatorSample extends State<CascadeOperatorSample> {
  CascadeOperatorSampleX x = CascadeOperatorSampleX();

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ElevatedButton(
          onPressed: () {
            setState(() {
              x
                ..addA()
                ..addB()
                ..addC();
            });
          },
          child: const Text("add ABC"),
        ),
        ElevatedButton(
          onPressed: () {
            setState(() {
              x
                ..addC()
                ..addB()
                ..addA();
            });
          },
          child: const Text("add CBA"),
        ),
        Text(x.getArray().toString()),
      ],
    );
  }
}
