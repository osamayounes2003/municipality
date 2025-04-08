import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:municipality/core/extensions/widget_extension.dart';
import 'package:municipality/core/functions/hijri_picker.dart';
import 'package:municipality/presentation/screens/base_screen.dart';
import 'package:municipality/presentation/widgets/custom_check_box.dart';
import 'package:municipality/presentation/widgets/custom_dropdown_button.dart';

import '../../../../../widgets/custom_button.dart';
import '../../../../../widgets/custom_text_feild.dart';
import '../controllers/medical_examination_request_controller.dart';

class EmployeesMedicalExaminationRequest extends StatelessWidget {
  const EmployeesMedicalExaminationRequest({super.key});

  @override
  Widget build(BuildContext context) {
    double currentWidth = Get.width;
    double currentHeight = Get.height;
    EmployeesMedicalExaminationRequestController controller =
        Get.put(EmployeesMedicalExaminationRequestController());
    HijriPicker examinationDate = HijriPicker(controller.examinationDate);

    return Scaffold(
        body: BaseScreen(
      widget: ListView(shrinkWrap: true, children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
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
                      customWidth: currentWidth * 0.23,
                    ),
                    CustomButton(
                            text: "اختر",
                            onPressed: () {},
                            height: 25,
                            width: 75)
                        .paddingOnly(top: 25)
                  ],
                ),
                CustomTextField(
                  controller: controller.mosalsal,
                  label: "مسلسل",
                  customHeight: 25,
                  customWidth: currentWidth / 3,
                ),
                CustomTextField(
                  suffixIcon: const Icon(
                    Icons.date_range_sharp,
                    size: 15,
                  ),
                  onTap: () => examinationDate.pickHijriDate(context),
                  controller: controller.examinationDate,
                  label: "تاريخ طلب الكشف",
                  customHeight: 25,
                  customWidth: currentWidth / 3,
                ),
                CustomTextField(
                  controller: controller.unit,
                  label: ' اسم الوحدة',
                  customHeight: 25,
                  customWidth: currentWidth / 3,
                ),
                CustomTextField(
                  controller: controller.notes,
                  label: 'ملاحظات',
                  customHeight: 25,
                  customWidth: currentWidth / 3,
                ),
                Row(
                  children: [
                    CustomDropdownButton(
                        label: "نوع الوحدة",
                        list: controller.units,
                        item: controller.unitType,
                        onChanged: (value) {
                          controller
                              .onChangedUnitType(controller.unitType.value);
                        }),
                    Obx(
                      () => CustomCheckbox(
                        label: "صورة",
                        value: controller.isPicture.value,
                        onChanged: (value) {
                          controller.onChangedPicture();
                        },
                      ),
                    ).paddingOnly(top: 20),
                  ],
                ),
                CustomDropdownButton(
                    label: "حالة الموظف",
                    list: controller.statesOfEmployee,
                    item: controller.employeeState,
                    onChanged: (value) {
                      controller
                          .onChangedUnitType(controller.employeeState.value);
                    }),
              ],
            ),
          ],
        ).paddingAll(5).scrollDirection(Axis.horizontal),
        Row(
          children: [
            CustomButton(
              text: 'طلب جديد',
              onPressed: () => {},
              height: 35,
              width: 150,
            ),
            CustomButton(
                text: 'طلب كشف طبي', onPressed: () {}, height: 35, width: 150),
            CustomButton(text: 'حفظ', onPressed: () {}, height: 35, width: 150),
          ],
        ).scrollDirection(Axis.horizontal).center(),
      ]),
    ));
  }
}
