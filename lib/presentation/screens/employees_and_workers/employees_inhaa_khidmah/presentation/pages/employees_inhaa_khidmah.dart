import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:municipality/core/extensions/widget_extension.dart';
import 'package:municipality/core/functions/hijri_picker.dart';
import 'package:municipality/presentation/screens/base_screen.dart';
import 'package:municipality/presentation/screens/employees_and_workers/employees_hasem/presentation/controllers/employees_hasem_controller.dart';
import 'package:municipality/presentation/screens/employees_and_workers/employees_inhaa_khidmah/presentation/controllers/employees_inhaa_khidmah_controller.dart';
import 'package:municipality/presentation/widgets/custom_button.dart';
import 'package:municipality/presentation/widgets/custom_check_box.dart';
import 'package:municipality/presentation/widgets/custom_radio_list_tile.dart';
import 'package:municipality/presentation/widgets/custom_text_feild.dart';
import 'package:pluto_grid/pluto_grid.dart';

class EmployeesInhaaKhidmah extends StatelessWidget {
  const EmployeesInhaaKhidmah({super.key});

  @override
  Widget build(BuildContext context) {
    EmployeesInhaaKhidmahController controller =
        Get.put(EmployeesInhaaKhidmahController());
    double currentWidth = Get.width;
    double currentHeight = Get.height;

    HijriPicker decisionDate = HijriPicker(controller.decisionDate);
    HijriPicker dateOfBirth = HijriPicker(controller.dateOfBirth);
    HijriPicker inhaaKhidmahDate = HijriPicker(controller.inhaaKhidmahDate);

    return Scaffold(
      body: BaseScreen(
        widget: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CustomTextField(
                  controller: controller.rank,
                  label: 'المرتبة',
                  customHeight: 25,
                  customWidth: currentWidth * 0.2,
                ),
                CustomTextField(
                  controller: controller.number,
                  label: 'الرقم',
                  customHeight: 25,
                  customWidth: currentWidth * 0.2,
                ),
                CustomTextField(
                  controller: controller.degree,
                  label: 'الدرجة',
                  customHeight: 25,
                  customWidth: currentWidth * 0.2,
                ),
                CustomTextField(
                  controller: controller.salary,
                  label: 'الراتب',
                  customHeight: 25,
                  customWidth: currentWidth * 0.2,
                ),
              ],
            ).scrollDirection(Axis.horizontal),
            Row(
              children: [
                CustomTextField(
                  suffixIcon: Icon(Icons.date_range_sharp, size: 15),
                  onTap: () => inhaaKhidmahDate.pickHijriDate(context),
                  controller: controller.inhaaKhidmahDate,
                  label: 'تاريخ إنهاء الخدمة',
                  customHeight: 25,
                  customWidth: currentWidth * 0.2,
                ),
                CustomTextField(
                  controller: controller.igazahDaysNumber,
                  label: 'عدد أيام الإجازة',
                  customHeight: 25,
                  customWidth: currentWidth * 0.2,
                ),
                CustomTextField(
                  suffixIcon: Icon(Icons.date_range_sharp, size: 15),
                  onTap: () => dateOfBirth.pickHijriDate(context),
                  controller: controller.dateOfBirth,
                  label: 'تاريخ الميلاد',
                  customHeight: 25,
                  customWidth: currentWidth * 0.2,
                ),
                CustomTextField(
                  controller: controller.age,
                  label: 'العمر',
                  customHeight: 25,
                  customWidth: currentWidth * 0.2,
                ),
              ],
            ).scrollDirection(Axis.horizontal),
            Row(
              children: [
                CustomTextField(
                  controller: controller.mosalsal,
                  label: 'مسلسل',
                  customHeight: 25,
                  customWidth: currentWidth * 0.2,
                ),
                CustomTextField(
                  controller: controller.decisionNumber,
                  label: 'رقم القرار',
                  customHeight: 25,
                  customWidth: currentWidth * 0.2,
                ),
                CustomTextField(
                  suffixIcon: Icon(
                    Icons.date_range_sharp,
                    size: 15,
                  ),
                  onTap: () => decisionDate.pickHijriDate(context),
                  controller: controller.decisionDate,
                  label: 'تاريخ القرار',
                  customHeight: 25,
                  customWidth: currentWidth * 0.2,
                ),
              ],
            ).scrollDirection(Axis.horizontal),
            Row(
              children: [
                CustomTextField(
                  controller: controller.statusCardNumber,
                  label: 'رقم بطاقة الأحوال',
                  customHeight: 25,
                  customWidth: currentWidth * 0.2,
                ),
                CustomTextField(
                  controller: controller.employee1,
                  label: 'الموظف',
                  customHeight: 25,
                  customWidth: currentWidth * 0.1,
                ),
                CustomTextField(
                  controller: controller.employee2,
                  label: '',
                  customHeight: 25,
                  customWidth: currentWidth * 0.2,
                ),
                CustomButton(
                  text: "اختر",
                  onPressed: () {},
                  height: 25,
                  width: 50,
                ).paddingOnly(top: 20),
              ],
            ).scrollDirection(Axis.horizontal),
            Row(
              children: [
                CustomTextField(
                  controller: controller.job,
                  label: 'الوظيفة',
                  customHeight: 25,
                  customWidth: currentWidth * 0.2,
                ),
                CustomTextField(
                  controller: controller.jobType,
                  label: ' نوع الوظيفة',
                  customHeight: 25,
                  customWidth: currentWidth * 0.2,
                ),
                Obx(
                  () => CustomCheckbox(
                    label: "صورة",
                    value: controller.isPicture.value,
                    onChanged: (value) {
                      controller.onChangePicture();
                    },
                  ).paddingOnly(top: 20),
                )
              ],
            ).scrollDirection(Axis.horizontal),
            Row(
              children: [
                Obx(
                  () => SizedBox(
                    width: 200,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomRadioListTile<String>(
                          value: "تقاعد نظامي",
                          groupValue:
                              controller.selectedRadioListTileValue.value,
                          title: "تقاعد نظامي",
                          onChanged: (value) {
                            controller.updateRadioListTileValue(value);
                          },
                        ),
                        CustomRadioListTile<String>(
                          value: "تقاعد مبكر",
                          groupValue:
                              controller.selectedRadioListTileValue.value,
                          title: "تقاعد مبكر",
                          onChanged: (value) {
                            controller.updateRadioListTileValue(value);
                          },
                        ),
                        CustomRadioListTile<String>(
                          value: "تقاعد الوفاة",
                          groupValue:
                              controller.selectedRadioListTileValue.value,
                          title: "تقاعد الوفاة",
                          onChanged: (value) {
                            controller.updateRadioListTileValue(value);
                          },
                        ),
                      ],
                    ),
                  ).paddingAll(15),
                ),
                Obx(
                  () => Column(
                    children: [
                      CustomCheckbox(
                        label: 'راتب أربع شهور مكافأة إنهاء خدمة',
                        value: controller.salaryFor4Months.value,
                        onChanged: (value) {
                          controller.onChangeSalaryFor4Months();
                        },
                      ),
                      CustomCheckbox(
                        label: 'راتب ستة شهور مكافأة إنهاء خدمة',
                        value: controller.salaryFor6Months.value,
                        onChanged: (value) {
                          controller.onChangeSalaryFor6Months();
                        },
                      )
                    ],
                  ),
                )
              ],
            ),
            Row(
              children: [
                CustomButton(
                  text: "إنهاء خدمة جديد",
                  onPressed: () {},
                  height: 35,
                  width: 120,
                ),
                CustomButton(
                  text: "طباعة قرار إنهاء خدمة",
                  onPressed: () {},
                  height: 35,
                  width: 120,
                ),
                CustomButton(
                  text: "طباعة مسير",
                  onPressed: () {},
                  height: 35,
                  width: 120,
                ),
                CustomButton(
                  text: "طباعة مكافأة إنهاء خدمة",
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
          ],
        ).scrollDirection(Axis.vertical),
      ),
    );
  }
}
