import 'package:flutter/material.dart';

class MouseRegionSample extends StatefulWidget {
  const MouseRegionSample({Key? key}) : super(key: key);

  @override
  State<MouseRegionSample> createState() => _MouseRegionSample();
}

class _MouseRegionSample extends State<MouseRegionSample> {
  bool _isShow = false;
  void _show() {
    setState(() {
      _isShow = true;
    });
  }
  void _hide() {
    setState(() {
      _isShow = false;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          MouseRegion(
            child: Container(
              width: 5,
              height: 5,
              color: Colors.black,
            ),
            cursor: SystemMouseCursors.click,
            onEnter: (event) => _show(),
            onExit: (event) => _hide(),
          ),

          if (_isShow)
            Container(
              margin: const EdgeInsets.only(top: 100),
              child: const Text("hover the dot", style: TextStyle(fontSize: 50),),
            ),
        ],
      )
    );
  }
}
