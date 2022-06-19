import 'package:flutter/material.dart';

class DialogSample extends StatefulWidget {
  const DialogSample({Key? key}) : super(key: key);

  @override
  _DialogSampleState createState() => _DialogSampleState();
}

class _DialogSampleState extends State<DialogSample> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) => SimpleDialog(
              title: const Text('Flutter Mapp'),
              contentPadding: const EdgeInsets.all(20.0),
              children: [
                const Text('More information'),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text("Close"),
                )
              ]
            )
          );
        },
        child: const Text('show Dialog'),
      )
    );
  }
}
