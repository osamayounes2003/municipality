import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:municipality/core/extensions/widget_extension.dart';
import 'package:municipality/presentation/screens/base_screen.dart';
import 'package:municipality/presentation/widgets/custom_button.dart';
import 'package:municipality/presentation/widgets/custom_text_feild.dart';
import 'package:pluto_grid/pluto_grid.dart';

import '../controllers/promotion_search_controller.dart';

class PromotionSearch extends StatelessWidget {
  const PromotionSearch({super.key});

  @override
  Widget build(BuildContext context) {
    PromotionSearchController controller = Get.put(PromotionSearchController());
    double currentWidth = Get.width;
    double currentHeight = Get.height;

    return Scaffold(
      body: BaseScreen(
        widget: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Column(
                    children: [
                      CustomTextField(
                          enabled: false,
                          controller: controller.employee,
                          label: 'اسم الموظف',
                          customHeight: 35,
                          customWidth: 300),
                      CustomTextField(
                          enabled: false,
                          controller: controller.number,
                          label: 'رقم القرار',
                          customHeight: 35,
                          customWidth: 300),
                    ],
                  ),
                ],
              ).scrollDirection(Axis.horizontal).paddingAll(15),

              const SizedBox(height: 20), // Add spacing
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomButton(
                      text: "بحث ", onPressed: () {}, height: 35, width: 100),
                  CustomButton(
                      text: "بحث جديد",
                      onPressed: () {},
                      height: 35,
                      width: 100)
                ],
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: currentHeight / 1.5,
                width: currentWidth * 0.95,
                child: PlutoGrid(
                  configuration: const PlutoGridConfiguration(
                    columnSize: PlutoGridColumnSizeConfig(
                        autoSizeMode: PlutoAutoSizeMode.scale),
                  ),
                  rows: [],
                  columns: [
                    PlutoColumn(
                      title: 'الموظف',
                      field: 'employee',
                      type: PlutoColumnType.text(),
                    ),
                    PlutoColumn(
                      title: 'الوظيفة',
                      field: 'job',
                      type: PlutoColumnType.text(),
                    ),
                    PlutoColumn(
                      title: 'القسم',
                      field: 'part',
                      type: PlutoColumnType.text(),
                    ),
                    PlutoColumn(
                      title: 'الدرجة',
                      field: 'degree',
                      type: PlutoColumnType.text(),
                    ),
                    PlutoColumn(
                      title: 'المرتبة',
                      field: 'rank',
                      type: PlutoColumnType.text(),
                    ),
                  ],
                  mode: PlutoGridMode.selectWithOneTap,
                  onSelected: (event) {},
                ),
              ).paddingAll(15),
            ],
          ),
        ),
      ),
    );
  }
}
