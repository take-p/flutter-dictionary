import 'package:flutter/material.dart';
import 'package:widget_with_codeview/widget_with_codeview.dart';

import '../models/sample.dart';

class SampleList extends StatelessWidget {
  const SampleList({
    Key? key,
    required List<Sample> filteredPages,
  }) : _filteredPages = filteredPages, super(key: key);

  final List<Sample> _filteredPages;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        padding: const EdgeInsets.only(top: 10, bottom: 10),
        itemCount: _filteredPages.length,
        separatorBuilder: (BuildContext context, int index) => const Divider(
          color: Colors.grey,),
        itemBuilder: (BuildContext context, int index) {
          return _filteredPages.reversed.map((e) => ListTile(
            leading: Image.asset(e.imagePath),
            title: Text(e.title),
            subtitle: Row(
              children: [
                ...e.tags.map((tag) => Container(
                  margin: const EdgeInsets.symmetric(horizontal: 2),
                  child: Chip(
                    backgroundColor: Colors.white,
                    shape: StadiumBorder(
                      side: BorderSide(color: Colors.grey.shade300),
                    ),
                    label: Text(tag),
                  ),
                )),
              ],
            ),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                  builder: (context) => Scaffold(
                    appBar: AppBar(title: Text(e.title),),
                    body: WidgetWithCodeView(
                      child: e.widget,
                      sourceFilePath: e.source,
                    ),
                  )//e.value,
              ),);
            },
          ),).toList()[index];
        },
      ),
    );
  }
}
