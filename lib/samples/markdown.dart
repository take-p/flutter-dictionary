import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:flutter/services.dart';

class MarkdownSample extends StatelessWidget {
  const MarkdownSample({Key? key}) : super(key: key);

  Future<String> read() async {
    return rootBundle.loadString('assets/markdown/sample.md');
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: read(),
      builder: (context, snapshot) {
        return snapshot.connectionState == ConnectionState.waiting ?
          const Center(child: CircularProgressIndicator())
          : snapshot.hasError ? Markdown(data: snapshot.error.toString())
            : Markdown(data: snapshot.data.toString());
      }
    );
  }
}
