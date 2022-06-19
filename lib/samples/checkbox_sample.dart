import 'package:flutter/material.dart';

class CheckboxSample extends StatefulWidget {
  const CheckboxSample({Key? key}) : super(key: key);
  @override
  State createState() => _CheckboxSample();
}

class _CheckboxSample extends State<CheckboxSample> {
  bool? _isCheckedA = false;
  bool? _isCheckedB = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CheckboxListTile(
          title: const Text('普通のチェックボックス'),
          value: _isCheckedA,
          onChanged: (bool? newValue) {
            setState(() {
              _isCheckedA = newValue;
            });
          },
          activeColor: Colors.orangeAccent,
          checkColor: Colors.white,
          controlAffinity: ListTileControlAffinity.leading,
          tileColor: Colors.black12,
          tristate: false,
          subtitle: const Text('チェック有り、無し'),
        ),
        CheckboxListTile(
          title: const Text('3つの状態をもつチェックボックス'),
          value: _isCheckedB,
          onChanged: (bool? newValue) {
            setState(() {
              _isCheckedB = newValue;
            });
          },
          activeColor: Colors.orangeAccent,
          checkColor: Colors.white,
          controlAffinity: ListTileControlAffinity.leading,
          tileColor: Colors.black12,
          tristate: true,
          subtitle: const Text('yes、no、チェックなし'),
        ),
      ],
    );
  }
}
