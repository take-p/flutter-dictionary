import 'package:flutter/material.dart';
class AnimatedIconSample extends StatefulWidget {
  const AnimatedIconSample({Key? key}) : super(key: key);

  @override
  State<AnimatedIconSample> createState() => _AnimatedIconSample();
}

class _AnimatedIconSample extends State<AnimatedIconSample>
  with SingleTickerProviderStateMixin {
  bool isChanged = false;
  late AnimationController controller;

  @override
  initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
  }

  @override
  Widget build(BuildContext context) {
    void trigger() {
      setState(() {
        isChanged = !isChanged;
        isChanged ? controller.forward() : controller.reverse();
      });
    }

    return Padding(
      padding: const EdgeInsets.all(8),
      child: Center(
        child: SizedBox(
          width: 250,
          child: IconButton(
            iconSize: 150,
            onPressed: trigger,
            icon: AnimatedIcon(
              icon: AnimatedIcons.menu_home,
              color: Colors.orangeAccent,
              progress: controller,
            ),
          ),
        ),
      ),
    );
  }
}
