import 'package:flutter/material.dart';

class RefreshIndicatorSample extends StatelessWidget {
  const RefreshIndicatorSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future<List<String>> getData() async {
      await Future.delayed(
        const Duration(seconds: 2),
      );
      return ["New value 1", "New value 2", "New value 3", "New value 4"];
    }

    return Scaffold(
      appBar: AppBar(title: const Text("refresh indicator"),),
      body: RefreshIndicator(
        onRefresh: getData,
        child: ListView(
          children: [
            ListTile(
              leading: const CircleAvatar(
                child: Text("あ"),
              ),
              title: const Text("hogehoge"),
              onTap: () {},
            ),
            ListTile(
              leading: const CircleAvatar(
                child: Text("あ"),
              ),
              title: const Text("hogehoge"),
              onTap: () {},
            ),
            ListTile(
              leading: const CircleAvatar(
                child: Text("あ"),
              ),
              title: const Text("hogehoge"),
              onTap: () {},
            )
          ],
        )
      )
    );
  }
}
