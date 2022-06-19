import 'package:flutter/material.dart';

class TableSample extends StatelessWidget {
  const TableSample({Key? key}) : super(key: key);

  static final TableRow _tableRow = TableRow(
    children: <Widget>[
      for (int i = 1; i <= 3; i++)
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text('Cell $i'),
        ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Table(
        border: TableBorder.all(),
        defaultColumnWidth: const FixedColumnWidth(120.0),
        children: <TableRow>[
          for (int i = 0; i < 5; i++)
            _tableRow
        ],
      ),
    );
  }
}
