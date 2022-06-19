import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewSample extends StatefulWidget {
  const WebViewSample({Key? key}) : super(key: key);

  @override
  _WebViewSampleState createState() => _WebViewSampleState();
}

class _WebViewSampleState extends State<WebViewSample> {
  late WebViewController _controller;

  @override
  Widget build(BuildContext context) {
    return WebView(
      onWebViewCreated: (WebViewController webViewController) async {
        // 生成されたWebViewController情報を取得する
        _controller = webViewController;
        // HTMLファイルのURL（ローカルファイルの情報）をControllerに追加する処理
        await _loadHtmlFromAssets();
      },
      // javascriptを有効化
      javascriptMode: JavascriptMode.unrestricted,
    );
  }

  /// HTMLファイルを読み込む処理（非同期）
  Future _loadHtmlFromAssets() async {
    //HTMLファイルを読み込んでHTML要素を文字列で返す
    final fileText = await rootBundle.loadString('assets/html/performance.html');
    await _controller.loadUrl( Uri.dataFromString(
        fileText,
        mimeType: 'text/html',
        encoding: Encoding.getByName('utf-8')
    ).toString());
  }
}
