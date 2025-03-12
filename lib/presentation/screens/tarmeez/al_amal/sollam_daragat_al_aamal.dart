import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:municipality/core/extensions/widget_extension.dart';
import 'package:municipality/presentation/screens/base_screen.dart';
import 'package:municipality/presentation/widgets/custom_button.dart';
import 'package:municipality/presentation/widgets/custom_data_table.dart';
import 'package:municipality/presentation/widgets/custom_text_feild.dart';

class SollamDaragatAlAamal extends StatelessWidget {
  const SollamDaragatAlAamal({super.key});

  @override
  Widget build(BuildContext context) {
    double currentWidth = Get.width;
    double currentHeight = Get.height;
    final List<Map<String, String>> data = [
      {
        'الرمز': '3',
        'rank': '3',
        'salary': '2300',
        'Category ': '20',
        'bonus ': '67',
        'Living_allowance': '45',
      },
      {
        'الرمز': '3',
        'rank': '3',
        'salary': '2300',
        'Category ': '20',
        'bonus ': '67',
        'Living_allowance': '45',
      },
      {
        'الرمز': '3',
        'rank': '3',
        'salary': '2300',
        'Category ': '20',
        'bonus ': '67',
        'Living_allowance': '45',
      },
      {
        'الرمز': '3',
        'rank': '3',
        'salary': '2300',
        'Category ': '20',
        'bonus ': '67',
        'Living_allowance': '45',
      },
      {
        'الرمز': '3',
        'rank': '3',
        'salary': '2300',
        'Category ': '20',
        'bonus ': '67',
        'Living_allowance': '45',
      },
      {
        'الرمز': '3',
        'rank': '3',
        'salary': '2300',
        'Category ': '20',
        'bonus ': '67',
        'Living_allowance': '45',
      },
      {
        'الرمز': '3',
        'rank': '3',
        'salary': '2300',
        'Category ': '20',
        'bonus ': '67',
        'Living_allowance': '45',
      },
    ];
    return Scaffold(
      body: BaseScreen(
          widget: Column(
        children: [
          Row(
            children: [
              CustomTextField(
                label: '  البحث عن فئة',
                customHeight: 30,
                customWidth: 200,
                suffixIcon: Icon(Icons.search),
              ),
              CustomTextField(
                label: '  البحث عن درجة',
                customHeight: 30,
                customWidth: 200,
                suffixIcon: const Icon(Icons.search),
              ),
            ],
          ),
          Container(
            height: currentHeight / 2,
            child: CustomDataTable(
              columns: data.isNotEmpty ? data.first.keys.toList() : [],
              rows: data.map((item) => item.values.toList()).toList(),
              height: currentHeight,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomButton(
                  text: 'حفظ', onPressed: () {}, height: 40, width: 80),
              CustomButton(
                  text: 'حفظ', onPressed: () {}, height: 40, width: 80),
              CustomButton(
                  text: 'حفظ', onPressed: () {}, height: 40, width: 80),
            ],
          )
        ],
      )),
    );
  }
}
