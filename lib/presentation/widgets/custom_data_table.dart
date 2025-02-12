import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:municipality/constants/custom_styles.dart';

import '../../constants/app_colors.dart';
import 'custom_button.dart';

class CustomDataTable extends StatelessWidget {
  final List<String> columns;
  final List<List<dynamic>> rows;
  final double height;

  const CustomDataTable({
    super.key,
    required this.columns,
    required this.rows,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: ListView(shrinkWrap: true, children: [
        DataTable(
          border: TableBorder(
            top: tableBorderSide(2, AppColors.black),
            left: tableBorderSide(2, AppColors.black),
            right: tableBorderSide(2, AppColors.black),
            bottom: tableBorderSide(2, AppColors.black),
            verticalInside: tableBorderSide(2, AppColors.tableBorderColor),
            horizontalInside: tableBorderSide(2, AppColors.tableBorderColor),
          ),
          headingRowColor: MaterialStateProperty.all(AppColors.grey),
          columns: columns.map((column) {
            return DataColumn(label: Text(column));
          }).toList(),
          rows: rows.map((row) {
            return DataRow(
                onLongPress: () {
                  Get.dialog(AlertDialog(
                    title: const Text(
                      'data',
                      textAlign: TextAlign.center,
                    ),
                    actions: [
                      Row(
                        children: [
                          CustomButton(
                              text: 'حذف',
                              onPressed: () {},
                              height: 50,
                              width: 80),
                          CustomButton(
                              text: 'تعديل',
                              onPressed: () {},
                              height: 50,
                              width: 80),
                        ],
                      )
                    ],
                  ));
                },
                cells: row.map((cell) {
                  return DataCell(Text(cell.toString()));
                }).toList());
          }).toList(),
        ),
      ]),
    );
  }
}
