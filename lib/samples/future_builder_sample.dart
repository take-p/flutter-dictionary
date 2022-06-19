import 'package:flutter/material.dart';

class FutureBuilderPage extends StatelessWidget {
  const FutureBuilderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future<List<String>> getData() async {
      await Future.delayed(
        const Duration(seconds: 2),
      );
      return ["New value 1", "New value 2", "New value 3", "New value 4"];
    }

    return Center(
      child: FutureBuilder(
        future: getData(),
        builder: (context, snapshot) {
          return snapshot.connectionState == ConnectionState.waiting ?
          const CircularProgressIndicator() :
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: List.generate(
                snapshot.data.toString().split(",").length,
                //snapshot.data,
                (index) => Text(
                  snapshot.data.toString().split(",")[index],
                  style: const TextStyle(
                    fontSize: 25,
                  ),
                ),
              ),
            ),
          );
        }
      ),
    );
  }
}
