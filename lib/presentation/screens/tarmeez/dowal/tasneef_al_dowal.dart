import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:municipality/presentation/screens/base_screen.dart';
import 'package:municipality/presentation/screens/tarmeez/dowal/tasneef_al_dowal_controller.dart';

import '../../../widgets/custom_button.dart';
import '../../../widgets/custom_data_table.dart';
import '../../../widgets/custom_text_feild.dart';

class TasneefAlDowal extends StatelessWidget {
  const TasneefAlDowal({super.key});

  @override
  Widget build(BuildContext context) {
    TasneefAlDowalController controller = Get.put(TasneefAlDowalController());
    double currentWidth = Get.width;
    double currentHeight = Get.height;
    final List<Map<String, String>> data = [
      {
        'id': '5500',
        'country': 'سوري ',
        'category': 'سورية ',
      },
      {
        'id': '5500',
        'country': 'سوري ',
        'category': 'سورية ',
      },
      {
        'id': '5500',
        'country': 'سوري ',
        'category': 'سورية ',
      },
      {
        'id': '5500',
        'country': 'سوري ',
        'category': 'سورية ',
      },
      {
        'id': '5500',
        'country': 'سوري ',
        'category': 'سورية ',
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
                    controller: controller.classificationId,
                    label: "رمز التصنيف",
                    customHeight: 30,
                    customWidth: currentWidth / 5,
                  ),
                ],
              ),
              Row(
                children: [
                  CustomTextField(
                    controller: controller.country,
                    label: "اسم الدولة",
                    customHeight: 30,
                    customWidth: currentWidth / 3,
                  ),
                ],
              ),
              Row(
                children: [
                  CustomTextField(
                    controller: controller.category,
                    label: 'الفئة',
                    customHeight: 30,
                    customWidth: currentWidth / 3,
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              CustomButton(
                text: 'حفظ',
                onPressed: () => {},
                height: 40,
                width: 80,
              ),
              CustomDataTable(
                columns: data.isNotEmpty ? data.first.keys.toList() : [],
                rows: data.map((item) => item.values.toList()).toList(),
                height: currentHeight / 3,
              ),
            ],
          ),
        ),
      ]),
    )));
  }
}
