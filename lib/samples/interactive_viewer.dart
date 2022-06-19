import 'package:flutter/material.dart';

class InteractiveViewerSample extends StatelessWidget {
  const InteractiveViewerSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InteractiveViewer(
      child: Image.asset("assets/images/lake.jpg"),
    );
  }
}
