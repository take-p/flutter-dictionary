import 'package:flutter/material.dart';

class NullAwareOperatorSample extends StatefulWidget {
  const NullAwareOperatorSample({Key? key}) : super(key: key);

  @override
  _NullAwareOperatorSampleState createState() => _NullAwareOperatorSampleState();
}

class _NullAwareOperatorSampleState extends State<NullAwareOperatorSample> {
  late String textInformation;

  @override
  Widget build(BuildContext context) {
    textInformation = "Flutter is Awesome";

    return Center(
      child: Text(
        textInformation,
        style: const TextStyle(fontSize: 25),
      ),
    );
  }
}
