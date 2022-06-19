import 'package:flutter/material.dart';

class VisibilityPage extends StatefulWidget {
  const VisibilityPage({ Key? key }) : super(key: key);

  @override
  State<VisibilityPage> createState() => _VisibilityPage();
}

class _VisibilityPage extends State<VisibilityPage> {
  bool _isVisible = true;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              setState(() {
                _isVisible = !_isVisible;
              });
            },
            child: const Text("Button 1"),
          ),
          Visibility(
            visible: _isVisible,
            child: Image.asset("assets/images/lake.jpg"),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text("Button 2"),
          ),
        ],
      ),
    );
  }
}