import 'package:flutter/material.dart';

class ColumnSample extends StatelessWidget {
  const ColumnSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Image.asset("assets/images/logo.png", width: 100,),
        ),
        Center(
          child: Image.asset("assets/images/logo.png", width: 100,),
        ),
        const Divider(
          color: Colors.black,
          thickness: 5,
        ),
        Center(
          child: Image.asset("assets/images/logo.png", width: 100,),
        ),
        const Spacer(),
        Image.asset("assets/images/logo.png", width: 100,),
      ],
    );
  }
}
