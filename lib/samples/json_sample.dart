import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';

class JsonSampleModel {
  final String A;
  final String B;
  final String C;
  final Map child;

  JsonSampleModel(this.A, this.B, this.C, this.child);

  JsonSampleModel.fromJson(Map<String, dynamic> json)
      : A = json["A"],
        B = json["B"],
        C=json["C"],
        child=json["child"];

  Map<String, dynamic> toJson() => {
    "A" : A,
    "B" : B,
    "C" : C,
    "child" : child
  };
}

class JsonSample extends StatelessWidget {
  const JsonSample({Key? key}) : super(key: key);

  Future<String> loadJsonAsString() async {
    return await rootBundle.loadString("assets/json/sample.json");
  }

  Future<Map<String, dynamic>> loadJson() async {
    String _data = await rootBundle.loadString("assets/json/sample.json");
    return (json.decode(_data) as Map<String, dynamic>); // json.decode()の戻り値型はMap<String, dynamic>
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FutureBuilder(
          future: loadJsonAsString(),
          builder: (context, snapshot) {
            return snapshot.connectionState == ConnectionState.waiting ?
                const CupertinoActivityIndicator() : Text(snapshot.data.toString());
          },
        ),
        const Divider(),
        FutureBuilder(
          future: loadJson(),
          builder: (context, snapshot) {
            return snapshot.connectionState == ConnectionState.waiting ?
            const CupertinoActivityIndicator() : Text(snapshot.data.toString());
          },
        ),
      ],
    );
  }
}