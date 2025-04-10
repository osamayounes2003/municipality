import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:municipality/core/constants/app_colors.dart';
import 'package:municipality/core/extensions/widget_extension.dart';
import 'package:municipality/core/functions/hijri_picker.dart';
import 'package:municipality/presentation/screens/base_screen.dart';
import 'package:municipality/presentation/screens/employees_and_workers/employees_hasem/presentation/controllers/employees_hasem_controller.dart';
import 'package:municipality/presentation/screens/employees_and_workers/employees_inhaa_khidmah/presentation/controllers/employees_inhaa_khidmah_controller.dart';
import 'package:municipality/presentation/widgets/custom_button.dart';
import 'package:municipality/presentation/widgets/custom_check_box.dart';
import 'package:municipality/presentation/widgets/custom_dropdown_button.dart';
import 'package:municipality/presentation/widgets/custom_radio_list_tile.dart';
import 'package:municipality/presentation/widgets/custom_text_feild.dart';
import 'package:pluto_grid/pluto_grid.dart';

import '../controllers/employees_taeen_and_mobasharah_controller.dart';

class EmployeesTaeenAndMobasharah extends StatelessWidget {
  const EmployeesTaeenAndMobasharah({super.key});

  @override
  Widget build(BuildContext context) {
    EmployeesTaeenAndMobasharahController controller =
        Get.put(EmployeesTaeenAndMobasharahController());
    double currentWidth = Get.width;
    double currentHeight = Get.height;

    HijriPicker decisionDate = HijriPicker(controller.decisionDate);
    HijriPicker mobasharahDate = HijriPicker(controller.mobasharahDate);
    HijriPicker litterDate = HijriPicker(controller.litterDate);
    HijriPicker dateOfBirth = HijriPicker(controller.dateOfBirth);
    return Scaffold(
      body: BaseScreen(
        widget: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CustomTextField(
                  suffixIcon: Icon(Icons.date_range_sharp, size: 15),
                  onTap: () => dateOfBirth.pickHijriDate(context),
                  controller: controller.dateOfBirth,
                  label: 'تاريخ الميلاد',
                  customHeight: 25,
                  customWidth: currentWidth * 0.2,
                ),
                CustomTextField(
                  controller: controller.part,
                  label: 'القسم',
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
              ],
            ).scrollDirection(Axis.horizontal),
            Row(
              children: [
                CustomTextField(
                  controller: controller.litterNumber,
                  label: 'رقم الخطاب',
                  customHeight: 25,
                  customWidth: currentWidth * 0.2,
                ),
                CustomTextField(
                  suffixIcon: Icon(Icons.date_range_sharp, size: 15),
                  onTap: () => litterDate.pickHijriDate(context),
                  controller: controller.litterDate,
                  label: 'تاريخ الخطاب',
                  customHeight: 25,
                  customWidth: currentWidth * 0.2,
                ),
                CustomTextField(
                  controller: controller.naqel,
                  label: 'النقل',
                  customHeight: 25,
                  customWidth: currentWidth * 0.2,
                ),
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
                  controller: controller.litterAuthority,
                  label: 'جهة الخطاب',
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
                  controller: controller.socialInsuranceNumber,
                  label: 'رقم التأمين الإجتماعي',
                  customHeight: 25,
                  customWidth: currentWidth * 0.2,
                ),
                CustomDropdownButton(
                  label: 'يوم المباشرة',
                  height: 25,
                  width: currentWidth * 0.2,
                  item: controller.mobasharahDay,
                  list: controller.mobasharahDays,
                  onChanged: (value) {
                    controller.onChangeMobasharahDay(value);
                  },
                ),
                CustomTextField(
                  suffixIcon: Icon(
                    Icons.date_range_sharp,
                    size: 15,
                  ),
                  onTap: () => mobasharahDate.pickHijriDate(context),
                  controller: controller.mobasharahDate,
                  label: 'تاريخ المباشرة',
                  customHeight: 25,
                  customWidth: currentWidth * 0.2,
                ),
              ],
            ).scrollDirection(Axis.horizontal),
            Row(
              children: [
                Obx(
                  () => Container(
                    color: AppColors.greyLight,
                    width: 200,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('الحالة الإجتماعية'),
                        CustomRadioListTile<String>(
                          value: "متزوج",
                          groupValue: controller.socialStatues.value,
                          title: "متزوج",
                          onChanged: (value) {
                            controller.updateSocialStatues(value);
                          },
                        ),
                        CustomRadioListTile<String>(
                          value: "أعزب",
                          groupValue: controller.socialStatues.value,
                          title: "أعزب",
                          onChanged: (value) {
                            controller.updateSocialStatues(value);
                          },
                        ),
                      ],
                    ).paddingAll(10),
                  ).paddingAll(15),
                ),
                Obx(
                  () => Container(
                    color: AppColors.greyLight,
                    width: 200,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('الجنس'),
                        CustomRadioListTile<String>(
                          value: "ذكر",
                          groupValue: controller.gender.value,
                          title: "ذكر",
                          onChanged: (value) {
                            controller.updateGender(value);
                          },
                        ),
                        CustomRadioListTile<String>(
                          value: "أنثى",
                          groupValue: controller.gender.value,
                          title: "أنثى",
                          onChanged: (value) {
                            controller.updateGender(value);
                          },
                        ),
                      ],
                    ).paddingAll(10),
                  ).paddingAll(15),
                )
              ],
            ).scrollDirection(Axis.horizontal),
            Row(
              children: [
                CustomButton(
                  text: " تعيين جديد",
                  onPressed: () {},
                  height: 35,
                  width: 120,
                ),
                CustomButton(
                  text: "طباعة قرار تعيين على بند الأجور",
                  onPressed: () {},
                  height: 35,
                  width: 200,
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
