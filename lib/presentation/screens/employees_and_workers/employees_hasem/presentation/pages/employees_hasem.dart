import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:municipality/core/extensions/widget_extension.dart';
import 'package:municipality/core/functions/hijri_picker.dart';
import 'package:municipality/presentation/screens/base_screen.dart';
import 'package:municipality/presentation/screens/employees_and_workers/employees_hasem/presentation/controllers/employees_hasem_controller.dart';
import 'package:municipality/presentation/widgets/custom_button.dart';
import 'package:municipality/presentation/widgets/custom_check_box.dart';
import 'package:municipality/presentation/widgets/custom_radio_list_tile.dart';
import 'package:municipality/presentation/widgets/custom_text_feild.dart';
import 'package:pluto_grid/pluto_grid.dart';

class EmployeesHasem extends StatelessWidget {
  const EmployeesHasem({super.key});

  @override
  Widget build(BuildContext context) {
    EmployeesHasemController controller = Get.put(EmployeesHasemController());
    double currentWidth = Get.width;
    double currentHeight = Get.height;

    HijriPicker decisionDatePicker = HijriPicker(controller.decisionDate);
    HijriPicker startHasemDatePicker = HijriPicker(controller.startHasemDate);
    HijriPicker endHasemDatePicker = HijriPicker(controller.endHasemDate);

    return Scaffold(
      body: BaseScreen(
        widget: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CustomTextField(
                  controller: controller.mosalsal,
                  label: 'مسلسل',
                  customHeight: 25,
                  customWidth: currentWidth * 0.3,
                ),
                CustomTextField(
                  controller: controller.decisionNumber,
                  label: 'رقم القرار',
                  customHeight: 25,
                  customWidth: currentWidth * 0.3,
                ),
                Obx(
                  () => SizedBox(
                    width: 200,
                    child: Column(
                      children: [
                        CustomRadioListTile<String>(
                          value: "حسم عن غياب",
                          groupValue:
                              controller.selectedRadioListTileValue.value,
                          title: "حسم عن غياب",
                          onChanged: (value) {
                            controller.updateRadioListTileValue(value);
                          },
                        ),
                        CustomRadioListTile<String>(
                          value: "حسم عن إجازة",
                          groupValue:
                              controller.selectedRadioListTileValue.value,
                          title: "حسم عن إجازة",
                          onChanged: (value) {
                            controller.updateRadioListTileValue(value);
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ).scrollDirection(Axis.horizontal),
            Row(
              children: [
                CustomTextField(
                  controller: controller.monthSummary,
                  label: 'خلاصة الشهر',
                  customHeight: 25,
                  customWidth: currentWidth * 0.3,
                ),
                CustomTextField(
                  controller: controller.monthOfHasemyYear,
                  label: 'عام',
                  customHeight: 25,
                  customWidth: currentWidth * 0.3,
                ),
              ],
            ).scrollDirection(Axis.horizontal),
            Row(
              children: [
                CustomTextField(
                  controller: controller.monthOfHasem,
                  label: 'شهر الحسم',
                  customHeight: 25,
                  customWidth: currentWidth * 0.25,
                ),
                CustomTextField(
                  controller: controller.monthOfHasemyYear,
                  label: 'عام',
                  customHeight: 25,
                  customWidth: currentWidth * 0.25,
                ),
                CustomTextField(
                  controller: controller.basedOnLetter,
                  label: 'بناءً على خطاب',
                  customHeight: 25,
                  customWidth: currentWidth * 0.25,
                ),
              ],
            ).scrollDirection(Axis.horizontal),
            Row(
              children: [
                CustomTextField(
                  suffixIcon: Icon(Icons.date_range_sharp, size: 15),
                  onTap: () => decisionDatePicker.pickHijriDate(context),
                  controller: controller.decisionDate,
                  label: 'تاريخ القرار',
                  customHeight: 25,
                  customWidth: currentWidth * 0.25,
                ),
                CustomTextField(
                  suffixIcon: Icon(Icons.date_range_sharp, size: 15),
                  onTap: () => startHasemDatePicker.pickHijriDate(context),
                  controller: controller.startHasemDate,
                  label: 'تاريخ بداية الحسم',
                  customHeight: 25,
                  customWidth: currentWidth * 0.25,
                ),
                CustomTextField(
                  suffixIcon: Icon(Icons.date_range_sharp, size: 15),
                  onTap: () => endHasemDatePicker.pickHijriDate(context),
                  controller: controller.endHasemDate,
                  label: 'تاريخ نهاية الحسم',
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
                  ).paddingOnly(top: 20),
                ),
              ],
            ).scrollDirection(Axis.horizontal),
            Row(
              children: [
                CustomButton(
                  text: "إضافة جديد",
                  onPressed: () {},
                  height: 35,
                  width: 120,
                ),
                CustomButton(
                  text: "طباعة قرار حسم",
                  onPressed: () {},
                  height: 35,
                  width: 120,
                ),
                CustomButton(
                  text: "إضافة موظف",
                  onPressed: () {},
                  height: 35,
                  width: 120,
                ),
                CustomButton(
                  text: "حذف موظف",
                  onPressed: () {},
                  height: 35,
                  width: 120,
                ),
                CustomButton(
                  text: "حفظ",
                  onPressed: () {},
                  height: 35,
                  width: 120,
                ),
              ],
            ).scrollDirection(Axis.horizontal).center(),
            SizedBox(
              height: currentHeight / 1.5,
              width: currentWidth * 0.95,
              child: PlutoGrid(
                configuration: const PlutoGridConfiguration(
                  columnSize: PlutoGridColumnSizeConfig(
                    autoSizeMode: PlutoAutoSizeMode.scale,
                  ),
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
                    title: 'الغياب - عدم المباشرة',
                    field: '  ',
                    type: PlutoColumnType.text(),
                  ),
                  PlutoColumn(
                    title: 'ساعات التجميع',
                    field: ' ',
                    type: PlutoColumnType.text(),
                  ),
                  PlutoColumn(
                    title: 'الدقائق',
                    field: '',
                    type: PlutoColumnType.text(),
                  ),
                  PlutoColumn(
                    title: 'الجزاء',
                    field: '      ',
                    type: PlutoColumnType.text(),
                  ),
                  PlutoColumn(
                    title: 'ملاحظات',
                    field: '    ',
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
