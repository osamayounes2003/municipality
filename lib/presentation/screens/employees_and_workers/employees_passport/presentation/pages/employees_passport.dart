import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:municipality/core/extensions/widget_extension.dart';
import 'package:municipality/core/functions/hijri_picker.dart';
import 'package:municipality/presentation/screens/base_screen.dart';
import 'package:municipality/presentation/screens/employees_and_workers/employees_iqrar/presentation/controllers/iqrar_controller.dart';
import 'package:municipality/presentation/screens/employees_and_workers/employees_passport/presentation/controllers/employees_passport_controller.dart';
import 'package:municipality/presentation/widgets/custom_check_box.dart';

import '../../../../../widgets/custom_button.dart';
import '../../../../../widgets/custom_text_feild.dart';

class EmployeesPassport extends StatelessWidget {
  const EmployeesPassport({super.key});

  @override
  Widget build(BuildContext context) {
    double currentWidth = Get.width;
    double currentHeight = Get.height;
    EmployeesPassportController controller =
        Get.put(EmployeesPassportController());
    HijriPicker iqrarDate = HijriPicker(controller.iqrarDate);

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
                CustomTextField(
                  controller: controller.nationality1,
                  label: ' الجنسية',
                  customHeight: 25,
                  customWidth: currentWidth * 0.25,
                ),
                CustomTextField(
                  controller: controller.mosalsal,
                  label: "مسلسل",
                  customHeight: 25,
                  customWidth: currentWidth * 0.25,
                ),
                CustomTextField(
                  suffixIcon: const Icon(
                    Icons.date_range_sharp,
                    size: 15,
                  ),
                  onTap: () => iqrarDate.pickHijriDate(context),
                  controller: controller.iqrarDate,
                  label: "تاريخ الإقرار",
                  customHeight: 25,
                  customWidth: currentWidth * 0.25,
                ),
                CustomTextField(
                  controller: controller.name,
                  label: 'الاسم',
                  customHeight: 25,
                  customWidth: currentWidth * 0.25,
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomTextField(
                  controller: controller.nationality2,
                  label: ' ',
                  customHeight: 25,
                  customWidth: currentWidth / 3,
                ),
                CustomTextField(
                  controller: controller.passportNumber,
                  label: "رقم الجواز",
                  customHeight: 25,
                  customWidth: currentWidth / 3,
                ),
                CustomTextField(
                  controller: controller.shahed,
                  label: "شاهد",
                  customHeight: 25,
                  customWidth: currentWidth / 3,
                ),
                CustomTextField(
                  controller: controller.issuedBy,
                  label: "صادر من : ",
                  customHeight: 25,
                  customWidth: currentWidth / 3,
                ),
              ],
            ),
            Column(
              children: [
                CustomButton(
                        text: 'اختر', onPressed: () {}, height: 25, width: 50)
                    .paddingOnly(top: 15),
                Obx(() => CustomCheckbox(
                      label: 'صورة',
                      value: controller.isPicture.value,
                      onChanged: (value) => controller.onChangedPicture(),
                    ).paddingAll(20))
              ],
            )
          ],
        ).paddingAll(5).scrollDirection(Axis.horizontal),
        Row(
          children: [
            CustomButton(
              text: 'إقرار جديد',
              onPressed: () => {},
              height: 35,
              width: 150,
            ),
            CustomButton(
                text: 'التقرير', onPressed: () {}, height: 35, width: 150),
            CustomButton(text: 'حفظ', onPressed: () {}, height: 35, width: 150),
          ],
        ).scrollDirection(Axis.horizontal).center(),
      ]),
    ));
  }
}
