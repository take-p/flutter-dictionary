import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class FlutterFlowSample extends StatelessWidget {
  const FlutterFlowSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Node(defaultX: 50, defaultY: 50,),
        Node(defaultX: 100, defaultY: 100,),
      ],
    );
  }
}

class Node extends HookWidget {
  double defaultX = 0;
  double defaultY = 0;
  Node({
    Key? key,
    required this.defaultX,
    required this.defaultY,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final position = useState(Offset(defaultX, defaultY));

    return GestureDetector(
      dragStartBehavior: DragStartBehavior.down,
      onPanUpdate: (dragUpdateDetails) {
        position.value = dragUpdateDetails.localPosition;
      },
      child: Stack(
          children: [
            Positioned(
              left: position.value.dx - 40,
              top: position.value.dy - 40,
              child: const FlutterLogo(
                size: 80,
              ),
            ),
          ]
      ),
    );
  }
}
