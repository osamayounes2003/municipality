import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:municipality/core/extensions/widget_extension.dart';
import 'package:municipality/presentation/screens/base_screen.dart';
import 'package:municipality/presentation/screens/search/iqrar/presentation/controllers/iqrar_search_controller.dart';
import 'package:municipality/presentation/widgets/custom_button.dart';
import 'package:municipality/presentation/widgets/custom_text_feild.dart';
import 'package:pluto_grid/pluto_grid.dart';

class IqrarSearch extends StatelessWidget {
  const IqrarSearch({super.key});

  @override
  Widget build(BuildContext context) {
    IqrarSearchController controller = Get.put(IqrarSearchController());
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
                          controller: controller.name,
                          label: 'اسم المقر',
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
              const SizedBox(height: 20), // Add spacing
              SizedBox(
                height: currentHeight / 1.5, // Define fixed height
                width: currentWidth * 0.95, // Define fixed width
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
