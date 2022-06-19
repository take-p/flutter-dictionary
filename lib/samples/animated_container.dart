import 'package:flutter/material.dart';

class AnimatedContainerSample extends StatefulWidget {
  const AnimatedContainerSample({Key? key}) : super(key: key);

  @override
  State<AnimatedContainerSample> createState() => _AnimatedContainerSample();
}

class _AnimatedContainerSample extends State<AnimatedContainerSample>
    with SingleTickerProviderStateMixin {
  bool pressed = false;

  @override
  Widget build(BuildContext context) {
    double height = pressed ? 150 : 250;
    Color color = pressed ? Colors.orangeAccent : Colors.blue;
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Center(
        child: InkWell(
          onTap: () {
            setState(() {
              pressed = !pressed;
            });
          },
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 100),
            color: color,
            width: 250,
            height: height,
          ),
        ),
      ),
    );
  }
}
