import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:municipality/presentation/screens/base_screen.dart';
import 'package:municipality/presentation/widgets/custom_button.dart';

import '../../widgets/custom_data_table.dart';
import '../../widgets/custom_text_field.dart';

class TarmeezGenseat extends StatelessWidget {
  const TarmeezGenseat({super.key});

  @override
  Widget build(BuildContext context) {
    double currentWidth = Get.width;
    double currentHeight = Get.height;
    final List<Map<String, String>> data = [
      {
        'name': 'سورية ',
        'Id': '7500',
      },
      {
        'name': 'مصر',
        'Id': '6500',
      },
      {
        'name': 'سورية ',
        'Id': '7500',
      },
      {
        'name': 'مصر',
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
                    label: "رمز الجنسية",
                    customHeight: 40,
                    customWidth: currentWidth / 4,
                  ),
                ],
              ),
              Row(
                children: [
                  CustomTextField(
                    label: "اسم الجنسية",
                    customHeight: 40,
                    customWidth: currentWidth / 2,
                  ),
                ],
              ),
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
          ),
        ),
      ]),
    )));
  }
}
