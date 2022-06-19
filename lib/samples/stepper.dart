import 'package:flutter/material.dart';

class StepperSample extends StatefulWidget {
  const StepperSample({Key? key}) : super(key: key);

  @override
  _StepperSampleState createState() => _StepperSampleState();
}

class _StepperSampleState extends State<StepperSample> {
  int _currentStep = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stepper(
        steps: const [
          Step(
            title: Text("Step 1"),
            content: Text("Information for step 1"),
          ),
          Step(
            title: Text("Step 2"),
            content: Text("Information for step 2"),
          ),
          Step(
            title: Text("Step 3"),
            content: Text("Information for step 3"),
          ),
        ],
        onStepTapped: (int newIndex) {
          setState(() {
            _currentStep = newIndex;
          });
        },
        currentStep: _currentStep,
        onStepContinue: () {
          if (_currentStep != 2) {
            setState(() {
              _currentStep += 1;
            });
          }
        },
        onStepCancel: () {
          if (_currentStep != 0) {
            setState(() {
              _currentStep -= 1;
            });
          }
        },
      )
    );
  }
}
