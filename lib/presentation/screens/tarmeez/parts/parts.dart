import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:municipality/presentation/screens/base_screen.dart';
import 'package:municipality/presentation/screens/tarmeez/parts/parts_controller.dart';

import '../../../widgets/custom_button.dart';
import '../../../widgets/custom_data_table.dart';
import '../../../widgets/custom_text_feild.dart';

class Parts extends StatelessWidget {
  const Parts({super.key});

  @override
  Widget build(BuildContext context) {
    double currentWidth = Get.width;
    double currentHeight = Get.height;
    PartsController controller = Get.put(PartsController());
    final List<Map<String, String>> data = [
      {
        'section': 'سورية ',
        'Id': '7500',
      },
      {
        'section': 'مصر',
        'Id': '6500',
      },
      {
        'section': 'سورية ',
        'Id': '7500',
      },
      {
        'section': 'مصر',
        'Id': '6500',
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
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  CustomTextField(
                    controller: controller.sectionId,
                    label: "رمز القسم",
                    customHeight: 30,
                    customWidth: currentWidth / 5,
                  ),
                ],
              ).marginOnly(right: 100),
              Row(
                children: [
                  CustomTextField(
                    controller: controller.section,
                    label: "اسم القسم",
                    customHeight: 30,
                    customWidth: currentWidth / 3,
                  ),
                ],
              ).marginOnly(right: 100),
              SizedBox(
                height: 10,
              ),
              CustomButton(
                text: 'حفظ',
                onPressed: () => {},
                height: 40,
                width: 80,
              ),
              CustomDataTable(
                columns: ["الاسم", "الرمز"],
                rows: data.map((item) => item.values.toList()).toList(),
                height: currentHeight,
              ),
            ],
          ),
        ),
      ]),
    )));
  }
}
