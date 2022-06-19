import 'package:flutter/material.dart';

class SelectedTextSample extends StatefulWidget {
  const SelectedTextSample({Key? key}) : super(key: key);

  @override
  _SelectedTextSampleState createState() => _SelectedTextSampleState();
}

class _SelectedTextSampleState extends State<SelectedTextSample> {
  String selectedText = '';
  final String _selectableText = 'This is a selectable text';
  final TextStyle _styleBlue = const TextStyle(
    fontSize: 25,
    fontWeight: FontWeight.bold,
    color: Colors.blue,
  );
  final TextStyle _style = const TextStyle(
    fontSize: 25,
    fontWeight: FontWeight.bold,
  );

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            selectedText,
            style: _styleBlue,
          ),
          TextSelectionTheme(
            data: const TextSelectionThemeData(
              selectionColor: Colors.yellow,
            ),
            child: SelectableText(
              _selectableText,
              style: _style,
              onSelectionChanged: (selection, cause) {
                setState(() {
                  selectedText = _selectableText.substring(
                    selection.start,
                    selection.end,
                  );
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
