import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:municipality/presentation/screens/base_screen.dart';
import 'package:municipality/presentation/widgets/custom_button.dart';
import 'package:municipality/presentation/widgets/custom_data_table.dart';

import '../../../widgets/custom_text_feild.dart';

class TarmeezMokhalafat extends StatelessWidget {
  const TarmeezMokhalafat({super.key});

  @override
  Widget build(BuildContext context) {
    double currentWidth = Get.width;
    double currentHeight = Get.height;
    final List<Map<String, String>> data = [
      {
        'name': 'تاريغت',
        'id': '7500',
      },
      {
        'name': 'تاريغت',
        'id': '6500',
      },
      {
        'name': 'تاريغت',
        'id': '5900',
      },
      {
        'name': 'تاريغت',
        'id': '5900',
      },
      {
        'name': 'تاريغت',
        'id': '5900',
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
                    label: "رمز المخالفة",
                    customHeight: 40,
                    customWidth: currentWidth / 4,
                  ),
                ],
              ),
              Row(
                children: [
                  CustomTextField(
                    label: "اسم المخالفة",
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
                width: 90,
              ),
              CustomDataTable(
                columns: data.isNotEmpty ? data.first.keys.toList() : [],
                rows: data.map((item) => item.values.toList()).toList(),
                height: currentHeight / 3,
              )
            ],
          ),
        ),
      ]),
    )));
  }
}
