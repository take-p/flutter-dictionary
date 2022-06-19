import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

class MarkdownPage extends StatelessWidget {
  const MarkdownPage({Key? key, required this.title, required this.source}) : super(key: key);

  final String title;
  final String source;

  Future<String> read() async {
    return rootBundle.loadString(source);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title),),
      body: FutureBuilder(
          future: read(),
          builder: (context, snapshot) {
            return snapshot.connectionState == ConnectionState.waiting ?
            const Center(child: CircularProgressIndicator())
                : snapshot.hasError ? Markdown(
              data: snapshot.error.toString(),
            )
                : Markdown(
              data: snapshot.data.toString(),
              styleSheet: MarkdownStyleSheet(
                h1: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
                h2: const TextStyle(
                  fontWeight: FontWeight.bold,
                  height: 4,
                ),
                h3: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),

              ),
            );
          }
      ),
    );
  }
}
