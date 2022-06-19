import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class CurvedNavigationBarSample extends StatelessWidget {
  const CurvedNavigationBarSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.blueAccent,
        items: [
          IconButton(
            onPressed: () {},
            icon: Image.asset("assets/images/logo.png")
          ),
          IconButton(
              onPressed: () {},
              icon: Image.asset("assets/images/logo.png")
          ),
          IconButton(
              onPressed: () {},
              icon: Image.asset("assets/images/logo.png")
          ),
        ],
        onTap: (index) {},
      ),
    );
  }
}
