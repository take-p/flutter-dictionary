import 'package:flutter/material.dart';

class SliderSample extends StatefulWidget {
  const SliderSample({Key? key}) : super(key: key);

  @override
  State<SliderSample> createState() => _SliderSample();
}

class _SliderSample extends State<SliderSample> {
  double currentValue = 0;
  double divisionCurrentValue = 0;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Center(
          child: Text("$currentValue"),
        ),
        Slider(
          value: currentValue,
          onChanged: (newValue) {
            setState(() {
              currentValue = newValue;
            });
          },
          min: 0,
          max: 100,
        ),
        Center(
          child: Text(divisionCurrentValue.toInt().toString()),
        ),
        Slider(
          value: divisionCurrentValue,
          divisions: 10,
          onChanged: (newValue) {
            setState(() {
              divisionCurrentValue = newValue;
            });
          },
          min: 0,
          max: 10,
        ),
      ],
    );
  }
}
