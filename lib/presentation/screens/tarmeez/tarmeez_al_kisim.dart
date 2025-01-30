import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:municipality/presentation/screens/base_screen.dart';
import 'package:municipality/presentation/wedgits/custom_button.dart';

import '../../../constants/app_colors.dart';
import '../../wedgits/custom_data_table.dart';
import '../../wedgits/custom_text_feild.dart';

class TarmeezAlKisim extends StatelessWidget {
  const TarmeezAlKisim({super.key});

  @override
  Widget build(BuildContext context) {
    double currentWidth = Get.width;
    double currentHeight = Get.height;
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
                            label: "رمز القسم",
                            customHeight: 40,
                            customWidth: currentWidth / 4,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          CustomTextField(
                            label: "اسم القسم",
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
