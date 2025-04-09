import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:municipality/core/extensions/widget_extension.dart';
import 'package:municipality/core/functions/hijri_picker.dart';
import 'package:municipality/presentation/screens/base_screen.dart';
import 'package:municipality/presentation/screens/employees_and_workers/employees_hasem/presentation/controllers/employees_hasem_controller.dart';
import 'package:municipality/presentation/widgets/custom_button.dart';
import 'package:municipality/presentation/widgets/custom_check_box.dart';
import 'package:municipality/presentation/widgets/custom_dropdown_button.dart';
import 'package:municipality/presentation/widgets/custom_radio_list_tile.dart';
import 'package:municipality/presentation/widgets/custom_text_feild.dart';
import 'package:pluto_grid/pluto_grid.dart';

import '../controllers/employees_mobasharah_decision_controller.dart';

class EmployeesMobasharahDecision extends StatelessWidget {
  const EmployeesMobasharahDecision({super.key});

  @override
  Widget build(BuildContext context) {
    EmployeesMobasharahDecisionController controller =
        Get.put(EmployeesMobasharahDecisionController());
    double currentWidth = Get.width;
    double currentHeight = Get.height;

    HijriPicker decisionDate = HijriPicker(controller.decisionDate);
    HijriPicker mobasharahDate = HijriPicker(controller.mobasharahDate);
    HijriPicker startLeaveDate = HijriPicker(controller.startLeaveDate);
    HijriPicker workMobasharahDate = HijriPicker(controller.workMobasharahDate);
    HijriPicker litterDate = HijriPicker(controller.litterDate);
    HijriPicker mobasharahDateUntilEndMonth =
        HijriPicker(controller.mobasharahDateUntilEndMonth);

    return Scaffold(
      body: BaseScreen(
        widget: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
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
                    customWidth: currentWidth * 0.7,
                  ),
                  CustomButton(
                          text: 'اختر', onPressed: () {}, height: 25, width: 75)
                      .paddingOnly(top: 15)
                ],
              ).scrollDirection(Axis.horizontal),
              Row(
                children: [
                  CustomTextField(
                    controller: controller.mosalsal,
                    label: 'مسلسل',
                    customHeight: 25,
                    customWidth: currentWidth * 0.27,
                  ),
                  CustomTextField(
                    controller: controller.decisionNumber,
                    label: 'رقم القرار',
                    customHeight: 25,
                    customWidth: currentWidth * 0.27,
                  ),
                  CustomTextField(
                    controller: controller.mobasharahNumber,
                    label: 'رقم المباشرة',
                    customHeight: 25,
                    customWidth: currentWidth * 0.27,
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
                  CustomTextField(
                    controller: controller.rank,
                    label: 'المرتبة',
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
                  CustomTextField(
                    controller: controller.badalNaqel,
                    label: 'بدل النقل',
                    customHeight: 25,
                    customWidth: currentWidth * 0.2,
                  ),
                ],
              ).scrollDirection(Axis.horizontal),
              Row(
                children: [
                  CustomTextField(
                    suffixIcon: Icon(
                      Icons.date_range_sharp,
                      size: 15,
                    ),
                    controller: controller.decisionDate,
                    onTap: () => decisionDate.pickHijriDate(context),
                    label: 'تاريخ القرار',
                    customHeight: 25,
                    customWidth: currentWidth * 0.2,
                  ),
                  CustomTextField(
                    suffixIcon: Icon(
                      Icons.date_range_sharp,
                      size: 15,
                    ),
                    controller: controller.mobasharahDate,
                    onTap: () => mobasharahDate.pickHijriDate(context),
                    label: 'تاريخ المباشرة',
                    customHeight: 25,
                    customWidth: currentWidth * 0.22,
                  ),
                  CustomTextField(
                    suffixIcon: const Icon(
                      Icons.date_range_sharp,
                      size: 15,
                    ),
                    onTap: () => startLeaveDate.pickHijriDate(context),
                    controller: controller.startLeaveDate,
                    label: 'تاريخ بداية الإجازة',
                    customHeight: 25,
                    customWidth: currentWidth * 0.2,
                  ),
                  CustomTextField(
                    onTap: () => workMobasharahDate.pickHijriDate(context),
                    controller: controller.workMobasharahDate,
                    label: 'تاريخ مباشرة العمل',
                    customHeight: 25,
                    customWidth: currentWidth * 0.2,
                  ),
                ],
              ).scrollDirection(Axis.horizontal),
              Row(
                children: [
                  CustomTextField(
                    controller: controller.iqazahDuration,
                    label: 'مدة الإجازة',
                    customHeight: 25,
                    customWidth: currentWidth * 0.25,
                  ),
                  CustomTextField(
                    controller: controller.headOfDepartment,
                    label: 'رئيس القسم',
                    customHeight: 25,
                    customWidth: currentWidth * 0.25,
                  ),
                  CustomDropdownButton(
                      label: 'اليوم',
                      list: controller.days,
                      item: controller.day,
                      onChanged: (value) {
                        controller.onChangeDay(controller.day.value);
                      }),
                ],
              ).scrollDirection(Axis.horizontal),
              Row(
                children: [
                  CustomTextField(
                    controller: controller.mobasharahDateUntilEndMonth,
                    label: 'تاريخ المباشرة',
                    customHeight: 25,
                    customWidth: currentWidth * 0.2,
                  ),
                  Text("إلى نهاية الشهر ").paddingOnly(right: 10, top: 10),
                  SizedBox(
                    width: 100,
                  ),
                  CustomTextField(
                    suffixIcon: Icon(
                      Icons.date_range_sharp,
                      size: 15,
                    ),
                    controller: controller.litterDate,
                    onTap: () => litterDate.pickHijriDate(context),
                    label: 'تاريخ الخطاب',
                    customHeight: 25,
                    customWidth: currentWidth * 0.22,
                  ),
                ],
              ).scrollDirection(Axis.horizontal),
              Row(
                children: [
                  CustomTextField(
                    controller: controller.transgressor,
                    label: 'متجاوز / غير متجاوز',
                    customHeight: 25,
                    customWidth: currentWidth * 0.27,
                  ),
                  CustomTextField(
                    controller: controller.meeting,
                    label: 'لقاء',
                    customHeight: 25,
                    customWidth: currentWidth * 0.27,
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
                    text: "طباعة قرار مباشرة",
                    onPressed: () {},
                    height: 35,
                    width: 120,
                  ),
                  CustomButton(
                    text: "طباعة مسير راتب إفرادي",
                    onPressed: () {},
                    height: 35,
                    width: 150,
                  ),
                  CustomButton(
                    text: "حفظ",
                    onPressed: () {},
                    height: 35,
                    width: 120,
                  ),
                ],
              ).scrollDirection(Axis.horizontal).center(),
            ]).scrollDirection(Axis.vertical).paddingAll(15),
      ),
    );
  }
}
