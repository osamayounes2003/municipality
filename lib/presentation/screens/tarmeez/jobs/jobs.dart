import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:municipality/presentation/screens/base_screen.dart';
import 'package:municipality/presentation/screens/tarmeez/jobs/jobs_controller.dart';
import 'package:municipality/presentation/widgets/custom_button.dart';
import 'package:municipality/presentation/widgets/custom_data_table.dart';

import '../../../widgets/custom_text_feild.dart';

class Jobs extends StatelessWidget {
  Jobs({super.key});

  @override
  Widget build(BuildContext context) {
    JobsController controller = Get.put(JobsController());
    double currentWidth = Get.width;
    double currentHeight = Get.height;
    final List<Map<String, String>> data = [
      {
        'name': 'مهندس',
        'id': '7500',
      },
      {
        'name': 'أستاذ',
        'id': '6500',
      },
      {
        'name': 'مهندس',
        'id': '7500',
      },
      {
        'name': 'أستاذ',
        'id': '6500',
      },
      {
        'name': 'مهندس',
        'id': '7500',
      },
      {
        'name': 'أستاذ',
        'id': '6500',
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
                    controller: controller.jobId,
                    label: "رمز الوظيفة",
                    customHeight: 30,
                    customWidth: currentWidth / 5,
                  ),
                ],
              ).marginOnly(right: 100),
              Row(
                children: [
                  CustomTextField(
                    controller: controller.job,
                    label: "اسم الوظيفة",
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
              )
            ],
          ),
        ),
      ]),
    )));
  }
}
