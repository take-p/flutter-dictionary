import 'package:flutter/material.dart';
import 'package:flutter_dart_dictionary/pages/getting_started/markdown_page.dart';

import 'markdown_page.dart';

class GettingStarted extends StatelessWidget {
  const GettingStarted({Key? key}) : super(key: key);

  static const String markdownDirectoryPath = "assets/markdown/";
  static const List<Map<String, String>> tutorials = [
    {"title": "Flutterとは", "path": ""},
    {"title": "Flutterのインストール", "path": ""},
    {"title": "開発ツールの選定", "path": "editor.md"},
    {"title": "Widgetとは", "path": ""},
    {"title": "オープンソースライセンス", "path": "opensource_license.md"},
    {"title": "設計手法", "path": ""},
    {"title": "アプリケーションレイアウト", "path": "layout.md"},
    {"title": "レスポンシブデザイン", "path": ""},
    {"title": "ログを出力する", "path": ""},
    {"title": "テストを書く", "path": ""},
    {"title": "収益化", "path": "monetise.md"},
    {"title": "アプリをビルドする", "path": ""},
    {"title": "アプリを配信する", "path": ""},
    {"title": "パフォーマンス改善", "path": ""},
  ];

  @override
  Widget build(BuildContext context) {
    final List<Widget> chapters = tutorials.asMap().entries.map((e) =>
        ListTile(
          title: Text("第 ${e.key+1} 章　" + (e.value["title"] ?? "No title")),
          enabled: e.value["path"]!.isNotEmpty,
          onTap: () {
            Navigator.push(
              context, MaterialPageRoute(
                builder: (context) => MarkdownPage(
                  title: "第 ${e.key+1} 章　" + (e.value["title"] ?? ""),
                  source: markdownDirectoryPath + (e.value["path"] ?? ""),
                )
              ),
            );
          },
        )
    ).toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter入門"),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.only(top: 10, bottom: 10),
        itemCount: chapters.length,
        separatorBuilder: (BuildContext context, int index) => const Divider(
          color: Colors.grey,),
        itemBuilder: (BuildContext context, int index) {
          return chapters[index];
        },
      ),
    );
  }
}
