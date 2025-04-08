import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:municipality/presentation/screens/base_screen.dart';
import 'package:municipality/presentation/screens/search/employees/presentation/controllers/employees_search_controller.dart';
import 'package:municipality/presentation/widgets/custom_button.dart';
import 'package:municipality/presentation/widgets/custom_text_feild.dart';
import 'package:pluto_grid/pluto_grid.dart';

import '../../../../../widgets/drop_down_button_with_feild.dart';

class EmployeesSearch extends StatelessWidget {
  const EmployeesSearch({super.key});

  @override
  Widget build(BuildContext context) {
    EmployeesSearchController controller = Get.put(EmployeesSearchController());
    double currentWidth = Get.width;
    double currentHeight = Get.height;

    return Scaffold(
      body: BaseScreen(
        widget: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      CustomTextField(
                          controller: controller.employee,
                          enabled: false,
                          label: 'الموظف',
                          customHeight: 35,
                          customWidth: 200),
                      CustomTextField(
                          controller: controller.job,
                          label: 'الوظيفة',
                          customHeight: 35,
                          customWidth: 200),
                      CustomTextField(
                          controller: controller.part,
                          label: 'القسم',
                          customHeight: 35,
                          customWidth: 200),
                      CustomTextField(
                          controller: controller.degree,
                          label: 'الدرجة',
                          customHeight: 35,
                          customWidth: 200),
                      DropdownTextField(
                        hintText: 'حالة الوظيفة',
                        items: [
                          "مشغولة",
                          "مشغولة ومتوقفة عن العمل ",
                          "شاغرة",
                        ],
                        controller: controller.jobStatus,
                        customHeight: 35,
                        customWidth: 200,
                        selectedValue: controller.selectedJobStatus,
                        label: 'حالة الوظيفة',
                      )
                    ],
                  ),
                  Column(
                    children: [
                      CustomTextField(
                          controller: controller.name,
                          label: 'الاسم',
                          customHeight: 35,
                          customWidth: 200),
                      CustomTextField(
                          controller: controller.recordId,
                          label: 'رقم السجل المدني',
                          customHeight: 35,
                          customWidth: 200),
                      CustomTextField(
                          controller: controller.rank,
                          label: 'المرتبة',
                          customHeight: 35,
                          customWidth: 200),
                      DropdownTextField(
                        hintText: 'نوع الوظيفة',
                        items: [
                          "موظف",
                          "مستخدم ",
                          "عامل بند أجور",
                          "عامل اجنبي",
                          "عامل نظافة _عقد "
                        ],
                        controller: controller.jobType,
                        customHeight: 35,
                        customWidth: 200,
                        selectedValue: controller.selectedJobType,
                        label: 'نوع الوظيفة',
                      ),
                      CustomButton(
                          text: "بحث جديد",
                          onPressed: () {},
                          height: 35,
                          width: 200)
                    ],
                  )
                ],
              ),
              const SizedBox(height: 20), // Add spacing
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomButton(
                      text: "بحث ", onPressed: () {}, height: 35, width: 100),
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
                    PlutoColumn(
                      title: 'حالة الوظيفة',
                      field: 'job_status',
                      type: PlutoColumnType.text(),
                    ),
                    PlutoColumn(
                      title: 'الاسم',
                      field: 'name',
                      type: PlutoColumnType.text(),
                    ),
                    PlutoColumn(
                      title: 'رقم السجل المدني',
                      field: 'id',
                      type: PlutoColumnType.text(),
                    ),
                    PlutoColumn(
                      title: 'نوع بيانات الوظيفة',
                      field: 'job_type',
                      type: PlutoColumnType.text(),
                    ),
                  ],
                  mode: PlutoGridMode.selectWithOneTap,
                  onSelected: (event) {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
