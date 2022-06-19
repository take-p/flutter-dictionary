import 'package:flutter/material.dart';

class BottomNavigationBarSample extends StatefulWidget {
  const BottomNavigationBarSample({Key? key}) : super(key: key);

  @override
  State<BottomNavigationBarSample> createState() => _BottomNavigationBarSampleState();
}

class _BottomNavigationBarSampleState extends State<BottomNavigationBarSample> {
  int _selectedIndex = 0;

  _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "ホーム"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "検索"),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_outline), label: "お気に入り"),
        ],
        onTap: (index) => _onItemTapped(index),
        currentIndex: _selectedIndex,
      ),
      body: (() {
        switch(_selectedIndex) {
          case 0:
            return const Center(child: Text("ホーム画面"));
          case 1:
            return const Center(child: Text("検索画面"));
          case 2:
            return const Center(child: Text("お気に入り画面"));
        }
      })(),
    );
  }
}
