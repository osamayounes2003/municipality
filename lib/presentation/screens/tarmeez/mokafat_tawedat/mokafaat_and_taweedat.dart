import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:municipality/core/extensions/widget_extension.dart';
import 'package:municipality/presentation/screens/base_screen.dart';

import '../../../widgets/custom_button.dart';
import '../../../widgets/custom_data_table.dart';
import '../../../widgets/custom_text_feild.dart';
import 'mokafat_tawedat_controller.dart';

class MokafaatAndTaweedat extends StatelessWidget {
  const MokafaatAndTaweedat({super.key});

  @override
  Widget build(BuildContext context) {
    MokafaatAndTaweedatController controller =
        Get.put(MokafaatAndTaweedatController());
    double currentWidth = Get.width;
    double currentHeight = Get.height;
    final List<Map<String, String>> data = [
      {
        'code': '3',
        'rank': '3',
        'internal': '2300',
        'Category a ': '20',
        'Category b ': '67',
        'Category c ': '45',
        'high_living': '3000'
      },
      {
        'code': '3',
        'rank': '3',
        'internal': '2300',
        'Category a ': '20',
        'Category b ': '67',
        'Category c ': '45',
        'high_living': '3000'
      },
      {
        'code': '3',
        'rank': '3',
        'internal': '2300',
        'Category a ': '20',
        'Category b ': '67',
        'Category c ': '45',
        'high_living': '3000'
      },
      {
        'code': '3',
        'rank': '3',
        'internal': '2300',
        'Category a ': '20',
        'Category b ': '67',
        'Category c ': '45',
        'high_living': '3000'
      },
    ];
    return Scaffold(
        body: BaseScreen(
            widget: Center(
      child: ListView(shrinkWrap: true, children: [
        Container(
          padding: const EdgeInsets.all(5),
          width: currentWidth,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  CustomTextField(
                    controller: controller.id,
                    label: "الرمز",
                    customHeight: 25,
                    customWidth: currentWidth / 10,
                  ),
                  CustomTextField(
                    controller: controller.internal,
                    label: "داخلي",
                    customHeight: 25,
                    customWidth: currentWidth / 10,
                  ),
                  CustomTextField(
                    controller: controller.categoryA,
                    label: "الفئة أ ",
                    customHeight: 25,
                    customWidth: currentWidth / 10,
                  ),
                ],
              ).scrollDirection(Axis.horizontal),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomTextField(
                    controller: controller.rank,
                    label: "المرتبة",
                    customHeight: 25,
                    customWidth: currentWidth / 10,
                  ),
                  CustomTextField(
                    controller: controller.categoryB,
                    label: "الفئة ب",
                    customHeight: 25,
                    customWidth: currentWidth / 10,
                  ),
                  CustomTextField(
                    controller: controller.categoryC,
                    label: "الفئة ج",
                    customHeight: 25,
                    customWidth: currentWidth / 10,
                  ),
                  CustomTextField(
                    controller: controller.mortafeaaMaeshaa,
                    label: "مرتفعة المعيشة ",
                    customHeight: 25,
                    customWidth: currentWidth / 10,
                  ),
                ],
              ).scrollDirection(Axis.horizontal),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomButton(
                    text: 'حفظ',
                    onPressed: () => {},
                    height: 35,
                    width: 70,
                  ),
                ],
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
