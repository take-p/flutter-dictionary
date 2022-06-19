import 'package:flutter/material.dart';

class InteractiveViewerSample extends StatelessWidget {
  const InteractiveViewerSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: InteractiveViewer(
        maxScale: 5,
        boundaryMargin: const EdgeInsets.all(double.infinity),
        child: Image.asset(
          "assets/images/logo.png",
        ),
      ),
    );
  }
}
