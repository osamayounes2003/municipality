import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:municipality/core/extensions/widget_extension.dart';
import 'package:municipality/presentation/screens/base_screen.dart';

import '../widgets/custom_button.dart';
import '../widgets/custom_data_table.dart';
import '../widgets/custom_text_feild.dart';


class MokafaatAndTaweedat extends StatelessWidget {
  const MokafaatAndTaweedat({super.key});

  @override
  Widget build(BuildContext context) {
    double currentWidth = Get.width;
    double currentHeight = Get.height;
    final List<Map<String, String>> data = [
      {
        'code': '3',
        'rank': '3',
        'internal': '2300',
        'Category a ': '20' ,
        'Category b ': '67' ,
        'Category c ': '45',
        'high_living' : '3000'
      },
      {
        'code': '3',
        'rank': '3',
        'internal': '2300',
        'Category a ': '20' ,
        'Category b ': '67' ,
        'Category c ': '45',
        'high_living' : '3000'
      },
      {
        'code': '3',
        'rank': '3',
        'internal': '2300',
        'Category a ': '20' ,
        'Category b ': '67' ,
        'Category c ': '45',
        'high_living' : '3000'
      },
      {
        'code': '3',
        'rank': '3',
        'internal': '2300',
        'Category a ': '20' ,
        'Category b ': '67' ,
        'Category c ': '45',
        'high_living' : '3000'
      },

    ];
    return Scaffold(
        body: BaseScreen(
            widget: Center(
      child: ListView(
        
          shrinkWrap: true,
          children: [
            Container(
              padding: const EdgeInsets.all(5),
              width: currentWidth,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CustomTextField(
                        label: "الرمز",
                        customHeight: 40,
                        customWidth: currentWidth / 5,
                      ),
                    ],
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomTextField(
                        label: "المرتبة",
                        customHeight: 40,
                        customWidth: currentWidth / 10,
                      ),
                      CustomTextField(
                        label: "داخلي",
                        customHeight: 40,
                        customWidth: currentWidth / 10,
                      ),
                      CustomTextField(
                        label: "الفئة أ ",
                        customHeight: 40,
                        customWidth: currentWidth / 10,
                      ),
                      CustomTextField(
                        label: "الفئة ب",
                        customHeight: 40,
                        customWidth: currentWidth / 10,
                      ),
                      CustomTextField(
                        label: "الفئة ج",
                        customHeight: 40,
                        customWidth: currentWidth / 10,
                      ),
                      CustomTextField(
                        label: "مرتفعة المعيشة ",
                        customHeight: 40,
                        customWidth: currentWidth / 10,
                      ),
                    ],
                  ).scrollDirection(Axis.vertical),
                  SizedBox(
                    height: 10,
                  ),
                  CustomButton(
                    text: 'حفظ',
                    onPressed: () => {},
                    height: 60,
                    width: 80,
                  ),
                  CustomDataTable(
                    columns: data.isNotEmpty ? data.first.keys.toList() : [],
                    rows: data.map((item) => item.values.toList()).toList(),
                    height: currentHeight / 3,
                  ),
                ],
              ).scrollDirection(Axis.vertical),
            ),
          ]),
    )));
  }
}
