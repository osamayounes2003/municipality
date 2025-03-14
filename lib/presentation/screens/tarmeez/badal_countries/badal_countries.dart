import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:municipality/core/extensions/widget_extension.dart';
import 'package:municipality/presentation/screens/base_screen.dart';
import 'package:municipality/presentation/screens/tarmeez/badal_countries/badal_countries_controller.dart';

import '../../../widgets/custom_button.dart';
import '../../../widgets/custom_data_table.dart';
import '../../../widgets/custom_text_feild.dart';

class BadalCountries extends StatelessWidget {
  const BadalCountries({super.key});

  @override
  Widget build(BuildContext context) {
    BadalCountriesController controller = Get.put(BadalCountriesController());
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
                    customWidth: currentWidth / 6,
                  ),
                  CustomTextField(
                    controller: controller.country,
                    label: "اسم الدولة",
                    customHeight: 30,
                    customWidth: currentWidth / 6,
                  ),
                  CustomTextField(
                    controller: controller.category,
                    label: 'الفئة',
                    customHeight: 30,
                    customWidth: currentWidth / 6,
                  ),
                ],
              ).scrollDirection(Axis.horizontal),
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
                columns: [
                  'رمز التصنيف',
                  'اسم الدولة',
                  'الفئة',
                ],
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
