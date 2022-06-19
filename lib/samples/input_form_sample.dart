import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InputFormSample extends StatelessWidget {
  const InputFormSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const TextField(),
      TextField(
        keyboardType: TextInputType.number,
        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
      ), // 数値のみ入力可能
      //TextFormField(),
    ],);
  }
}
