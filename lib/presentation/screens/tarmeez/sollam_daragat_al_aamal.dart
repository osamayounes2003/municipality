import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:municipality/presentation/screens/base_screen.dart';

import '../../widgets/custom_data_table.dart';

class SollamDaragatAlAamal extends StatelessWidget {
  const SollamDaragatAlAamal({super.key});

  @override
  Widget build(BuildContext context) {
    double currentWidth = Get.width;
    double currentHeight = Get.height;
    final List<Map<String, String>> data = [
    {
      'code': '3',
    'rank': '3',
    'salary': '2300',
    'Category ': '20' ,
    'bonus ': '67' ,
    'Living_allowance': '45',

  },
      {
        'code': '3',
        'rank': '3',
        'salary': '2300',
        'Category ': '20' ,
        'bonus ': '67' ,
        'Living_allowance': '45',

      },
      {
        'code': '3',
        'rank': '3',
        'salary': '2300',
        'Category ': '20' ,
        'bonus ': '67' ,
        'Living_allowance': '45',

      },
    ];
    return  Scaffold(
      body:BaseScreen(widget: CustomDataTable(  columns: data.isNotEmpty ? data.first.keys.toList() : [],
        rows: data.map((item) => item.values.toList()).toList(),
        height: currentHeight ,)),
    );
  }
}
