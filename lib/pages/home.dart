import 'package:flutter/material.dart';
import 'package:flutter_dart_dictionary/pages/getting_started/getting_started.dart';
import 'package:flutter_dart_dictionary/pages/help.dart';
import 'package:flutter_dart_dictionary/pages/memo.dart';
import 'package:flutter_dart_dictionary/pages/tips.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> menuItem = const [
      GettingStarted(),
      GettingStarted(),
      Tips(),

    ];

    return Scaffold(
      body: ListView(
        children: [
          Container(
            height: 200,
            margin: const EdgeInsets.only(top: 50, bottom: 10),
            child: Container(
              padding: const EdgeInsets.all(30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.only(right: 30),
                    child: Image.asset("assets/images/flutter_logo.png"),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 30),
                    child: Image.asset("assets/images/dart_logo.png"),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 40),
            child: const Center(
              child: Text(
                "Flutter & Dart大辞典",
                style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 30),
              ),
            ),
          ),
          //const ShowPlatform(),
          Container(
            margin: const EdgeInsets.all(10),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) => const GettingStarted(),
                ),);
              },
              child: const Text("Flutter入門"),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) => const GettingStarted(),
                ),);
              },
              child: const Text("dart入門"),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) => const Tips(),
                ),);
              },
              child: const Text("テクニック集"),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) => const Tips(),
                ),);
              },
              child: const Text("便利なウィジェット"),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) => const Memo(),
                ),);
              },
              child: const Text("モバイルOSへのブリッジAPI"),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) => const Help(),
                ),);
              },
              child: const Text("バグかな？と思った時は"),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) => const Memo(),
                ),);
              },
              child: const Text("Flutter大辞典について"),
            ),
          ),
        ],
      ),
    );
  }
}