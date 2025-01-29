import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constants/app_colors.dart';

class CustomDataTable extends StatelessWidget {
  final List<String> columns;
  final List<List<dynamic>> rows;
final double height ;
  CustomDataTable({required this.columns, required this.rows, required this.height});

  @override
  Widget build(BuildContext context) {
    return


        SizedBox(
          height:height ,
          child: ListView(
            shrinkWrap: true,
            children:[ DataTable(
          headingRowColor:
            WidgetStateProperty.all(AppColors.grey),

              columns: columns.map((column) {
                return DataColumn(label: Text(column));
              }).toList(),
              rows: rows.map((row) {
                return DataRow(cells: row.map((cell) {
                  return DataCell(Text(cell.toString()));
                }).toList());
              }).toList(),


                ),]
          ),
        );
  }
}