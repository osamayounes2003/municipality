import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:municipality/core/extensions/widget_extension.dart';
import 'package:municipality/core/functions/hijri_picker.dart';
import 'package:municipality/presentation/screens/base_screen.dart';
import 'package:municipality/presentation/screens/search/iqrar/presentation/controllers/iqrar_search_controller.dart';
import 'package:municipality/presentation/widgets/custom_button.dart';
import 'package:municipality/presentation/widgets/custom_check_box.dart';
import 'package:municipality/presentation/widgets/custom_dropdown_button.dart';
import 'package:municipality/presentation/widgets/custom_text_feild.dart';
import 'package:pluto_grid/pluto_grid.dart';

import '../controllers/employees_dissents_controller.dart';

class EmployeesDissents extends StatelessWidget {
  const EmployeesDissents({super.key});

  @override
  Widget build(BuildContext context) {
    EmployeesDissentController controller =
        Get.put(EmployeesDissentController());
    double currentWidth = Get.width;
    double currentHeight = Get.height;
    HijriPicker startDate = HijriPicker(controller.startDate);
    HijriPicker endDate = HijriPicker(controller.endate);
    return Scaffold(
      body: BaseScreen(
        widget: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomTextField(
              controller: controller.moslsal,
              label: 'مسلسل',
              customHeight: 25,
              customWidth: currentWidth * 0.5,
            ),
            CustomDropdownButton(
                label: "نوع المخالفة",
                list: controller.dissentTypes,
                item: controller.dissentType,
                onChanged: (value) {
                  controller.onChangedDissentType(controller.dissentType.value);
                }),
            CustomTextField(
              controller: controller.dissentReport,
              label: 'بيان المخالفة',
              customHeight: 100,
              customWidth: currentWidth * 0.5,
            ),
            Row(
              children: [
                CustomTextField(
                  suffixIcon: Icon(Icons.date_range_sharp),
                  onTap: () => startDate.pickHijriDate(context),
                  controller: controller.startDate,
                  label: 'عن الفترة من ',
                  customHeight: 25,
                  customWidth: currentWidth * 0.25,
                ),
                CustomTextField(
                  suffixIcon: Icon(Icons.date_range_sharp),
                  onTap: () => endDate.pickHijriDate(context),
                  controller: controller.endate,
                  label: 'إلى',
                  customHeight: 25,
                  customWidth: currentWidth * 0.25,
                ),
                Obx(
                  () => CustomCheckbox(
                    label: "صورة",
                    value: controller.isPicture.value,
                    onChanged: (value) {
                      controller.onChangedPicture();
                    },
                  ).paddingAll(20),
                )
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
                    text: "إضافة موظف",
                    onPressed: () {},
                    height: 35,
                    width: 150),
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
                    title: 'بدل النقل',
                    field: 'badal_naqel',
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
                    title: 'الجزاء',
                    field: '',
                    type: PlutoColumnType.text(),
                  ),
                ],
                mode: PlutoGridMode.selectWithOneTap,
                onSelected: (event) {},
              ),
            ).paddingAll(15),
          ],
        ).scrollDirection(Axis.vertical),
      ),
    );
  }
}
