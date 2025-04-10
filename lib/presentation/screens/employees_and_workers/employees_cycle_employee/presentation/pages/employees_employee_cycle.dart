import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:municipality/core/extensions/widget_extension.dart';
import 'package:municipality/core/functions/hijri_picker.dart';
import 'package:municipality/presentation/screens/base_screen.dart';
import 'package:municipality/presentation/screens/search/iqrar/presentation/controllers/iqrar_search_controller.dart';
import 'package:municipality/presentation/widgets/custom_button.dart';
import 'package:municipality/presentation/widgets/custom_check_box.dart';
import 'package:municipality/presentation/widgets/custom_text_feild.dart';
import 'package:pluto_grid/pluto_grid.dart';

import '../controllers/employees_employee_cycle_controller.dart';

class EmployeesCycleEmployee extends StatelessWidget {
  const EmployeesCycleEmployee({super.key});

  @override
  Widget build(BuildContext context) {
    EmployeesCycleController controller = Get.put(EmployeesCycleController());
    double currentWidth = Get.width;
    double currentHeight = Get.height;
    HijriPicker startCycleDate = HijriPicker(controller.startCycleDate);
    HijriPicker endCycleDate = HijriPicker(controller.endCycleDate);
    HijriPicker decisionDate = HijriPicker(controller.decisionDate);
    return Scaffold(
      body: BaseScreen(
          widget: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CustomTextField(
                controller: controller.country1,
                label: 'الدولة',
                customHeight: 25,
                customWidth: currentWidth * 0.07,
              ),
              CustomTextField(
                controller: controller.country2,
                label: '',
                customHeight: 25,
                customWidth: currentWidth * 0.07,
              ),
              CustomTextField(
                controller: controller.country3,
                label: '',
                customHeight: 25,
                customWidth: currentWidth * 0.3,
              ),
              CustomButton(
                      text: "اختر", onPressed: () {}, height: 25, width: 100)
                  .paddingOnly(top: 25)
            ],
          ).scrollDirection(Axis.horizontal),
          Row(
            children: [
              Column(
                children: [
                  CustomTextField(
                    controller: controller.mosalsal,
                    label: 'مسلسل',
                    customHeight: 25,
                    customWidth: currentWidth * 0.33,
                  ),
                  CustomTextField(
                    controller: controller.decisionNum,
                    label: 'رقم القرار',
                    customHeight: 25,
                    customWidth: currentWidth * 0.33,
                  ),
                  CustomTextField(
                    controller: controller.numberDaysCycle,
                    label: 'عدد أيام الدورة',
                    customHeight: 25,
                    customWidth: currentWidth * 0.33,
                  ),
                  CustomTextField(
                    controller: controller.cycleReportTitle,
                    label: 'عنوان بيان دورة',
                    customHeight: 25,
                    customWidth: currentWidth * 0.33,
                  ),
                  CustomTextField(
                    controller: controller.cycleDecisionReport,
                    label: 'بيان قرار دورة',
                    customHeight: 25,
                    customWidth: currentWidth * 0.33,
                  ),
                ],
              ).scrollDirection(Axis.horizontal),
              Column(
                children: [
                  CustomTextField(
                    controller: controller.CompensatoryDays,
                    label: 'أيام تعويضية',
                    customHeight: 25,
                    customWidth: currentWidth * 0.33,
                  ),
                  CustomTextField(
                    suffixIcon: Icon(
                      Icons.date_range_sharp,
                      size: 15,
                    ),
                    onTap: () => startCycleDate.pickHijriDate(context),
                    controller: controller.startCycleDate,
                    label: 'تاريخ بداية دورة',
                    customHeight: 25,
                    customWidth: currentWidth * 0.33,
                  ),
                  CustomTextField(
                    suffixIcon: Icon(
                      Icons.date_range_sharp,
                      size: 15,
                    ),
                    onTap: () => endCycleDate.pickHijriDate(context),
                    controller: controller.endCycleDate,
                    label: 'تاريخ نهاية دورة',
                    customHeight: 25,
                    customWidth: currentWidth * 0.33,
                  ),
                  CustomTextField(
                    suffixIcon: Icon(
                      Icons.date_range_sharp,
                      size: 15,
                    ),
                    onTap: () => decisionDate.pickHijriDate(context),
                    controller: controller.decisionDate,
                    label: ' تاريخ القرار ',
                    customHeight: 25,
                    customWidth: currentWidth * 0.33,
                  ),
                ],
              ),
            ],
          ).scrollDirection(Axis.horizontal),
          Row(
            children: [
              CustomButton(
                  text: "إضافة جديد ",
                  onPressed: () {},
                  height: 35,
                  width: 150),
              CustomButton(
                  text: "طباعة بيان مخالفة",
                  onPressed: () {},
                  height: 35,
                  width: 150),
              CustomButton(
                  text: "إضافة موظف", onPressed: () {}, height: 35, width: 150),
            ],
          ).scrollDirection(Axis.horizontal).center(),
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
                  title: 'الاسم',
                  field: 'name',
                  type: PlutoColumnType.text(),
                ),
                PlutoColumn(
                  title: 'الراتب',
                  field: 'salary',
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
                  title: 'مقدار المكافأة',
                  field: ' ',
                  type: PlutoColumnType.text(),
                ),
                PlutoColumn(
                  title: 'بدل انتداب',
                  field: '  ',
                  type: PlutoColumnType.text(),
                ),
                PlutoColumn(
                  title: 'بدل نقل',
                  field: '   ',
                  type: PlutoColumnType.text(),
                ),
                PlutoColumn(
                  title: 'بدل تذاكر',
                  field: '',
                  type: PlutoColumnType.text(),
                ),
              ],
              mode: PlutoGridMode.selectWithOneTap,
              onSelected: (event) {},
            ),
          ).paddingAll(15),
        ],
      ).scrollDirection(Axis.vertical).paddingAll(15)),
    );
  }
}
