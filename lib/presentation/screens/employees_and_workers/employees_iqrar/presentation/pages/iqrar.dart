import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:municipality/core/extensions/widget_extension.dart';
import 'package:municipality/core/functions/hijri_picker.dart';
import 'package:municipality/presentation/screens/base_screen.dart';
import 'package:municipality/presentation/screens/employees_and_workers/employees_iqrar/presentation/controllers/iqrar_controller.dart';
import 'package:municipality/presentation/widgets/custom_check_box.dart';

import '../../../../../widgets/custom_button.dart';
import '../../../../../widgets/custom_text_feild.dart';

class EmployeesIqrar extends StatelessWidget {
  const EmployeesIqrar({super.key});

  @override
  Widget build(BuildContext context) {
    double currentWidth = Get.width;
    double currentHeight = Get.height;
    EmployeesIqrarController controller = Get.put(EmployeesIqrarController());
    HijriPicker iqrarDate = HijriPicker(controller.iqrarDate);
    HijriPicker khitabDate = HijriPicker(controller.khitabDate);
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
                  onTap: () => khitabDate.pickHijriDate(context),
                  controller: controller.khitabDate,
                  label: "تاريخ الخطاب",
                  customHeight: 25,
                  customWidth: currentWidth / 3,
                ),
                CustomTextField(
                  controller: controller.maqar,
                  label: 'اسم المقر ',
                  customHeight: 25,
                  customWidth: currentWidth / 3,
                ),
                CustomTextField(
                  controller: controller.makanHodour,
                  label: ' الحضور',
                  customHeight: 25,
                  customWidth: currentWidth / 3,
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomTextField(
                  suffixIcon: const Icon(
                    Icons.date_range_sharp,
                    size: 15,
                  ),
                  onTap: () => iqrarDate.pickHijriDate(context),
                  controller: controller.iqrarDate,
                  label: "تاريخ الإقرار",
                  customHeight: 25,
                  customWidth: currentWidth / 3,
                ),
                CustomTextField(
                  controller: controller.khitabNum,
                  label: "رقم الخطاب",
                  customHeight: 25,
                  customWidth: currentWidth / 3,
                ),
                CustomTextField(
                  controller: controller.morselKhitab,
                  label: "مرسل الخطاب",
                  customHeight: 25,
                  customWidth: currentWidth / 3,
                ),
                Obx(() => CustomCheckbox(
                      label: 'صورة',
                      value: controller.isPicture.value,
                      onChanged: (value) => controller.onChangedPicture(),
                    ).paddingAll(20))
              ],
            ),
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
