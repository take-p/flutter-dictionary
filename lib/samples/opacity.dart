import 'package:flutter/material.dart';

class OpacitySample extends StatelessWidget {
  const OpacitySample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Opacity(child: Image.asset("assets/images/logo.png"), opacity: 0.5)
    );
  }
}
