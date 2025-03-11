import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:municipality/presentation/widgets/custom_text_feild.dart';
import '../../core/constants/app_colors.dart';
import '../../core/constants/custom_styles.dart';
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

  void showEditDialog(BuildContext context, List<dynamic> rowData) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('تحديث البيانات'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: List.generate(
              rowData.length,
              (index) {
                var controller =
                    TextEditingController(text: rowData[index].toString());
                return CustomTextField(
                    customWidth: 225,
                    customHeight: 35,
                    label: columns[index],
                    controller: controller);
              },
            ),
          ),
          actions: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomButton(
                  text: 'حفظ',
                  onPressed: () {},
                  height: 35,
                  width: 70,
                ),
                CustomButton(
                  text: 'الغاء',
                  onPressed: () {
                    Get.back();
                  },
                  height: 35,
                  width: 70,
                ),
              ],
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: ListView(
        shrinkWrap: true,
        children: [
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
            columns: [
              ...columns.map((column) => DataColumn(label: Text(column))),
              const DataColumn(label: Text('Actions')),
            ],
            rows: rows.map((row) {
              return DataRow(
                cells: [
                  ...row.map((cell) => DataCell(Text(cell.toString()))),
                  DataCell(
                    Row(
                      children: [
                        IconButton(
                          icon: const Icon(Icons.edit),
                          onPressed: () {
                            showEditDialog(context, row);
                          },
                        ),
                        IconButton(
                          icon: const Icon(Icons.delete),
                          onPressed: () {
                            // Handle delete action
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
