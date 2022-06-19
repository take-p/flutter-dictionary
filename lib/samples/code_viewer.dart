import 'package:flutter/material.dart';
import 'package:flutter_dart_dictionary/samples/code_viewer_sample.dart';
import 'package:widget_with_codeview/widget_with_codeview.dart';

class CodeViewerSample extends StatelessWidget {
  const CodeViewerSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const WidgetWithCodeView(
        child: CodeViewerSampleFile(),
        sourceFilePath: "lib/samples/code_viewer_sample.dart");
  }
}
