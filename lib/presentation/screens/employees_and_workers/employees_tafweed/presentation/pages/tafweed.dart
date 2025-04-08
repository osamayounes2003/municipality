import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:municipality/core/extensions/widget_extension.dart';
import 'package:municipality/presentation/screens/base_screen.dart';

import '../../../../../../core/functions/hijri_picker.dart';
import '../../../../../widgets/custom_button.dart';
import '../../../../../widgets/custom_text_feild.dart';
import '../../../../../widgets/drop_down_button_with_feild.dart';
import '../controller/tafweed_controller.dart';

class EmployeesTafweed extends StatelessWidget {
  const EmployeesTafweed({super.key});

  @override
  Widget build(BuildContext context) {
    double currentWidth = Get.width;
    double currentHeight = Get.height;
    EmployeesTafweedController controller =
        Get.put(EmployeesTafweedController());
    late HijriPicker startDate = HijriPicker(controller.startDate);
    late HijriPicker endDate = HijriPicker(controller.endDate);
    return Scaffold(
        body: BaseScreen(
      widget: ListView(shrinkWrap: true, children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
              children: [
                CustomTextField(
                  controller: controller.mosalsal,
                  label: "مسلسل",
                  customHeight: 25,
                  customWidth: currentWidth / 4,
                ),
                CustomTextField(
                  controller: controller.mawdoouh,
                  label: "الموضوع",
                  customHeight: 25,
                  customWidth: currentWidth / 4,
                ),
                DropdownTextField(
                  hintText: 'حالة الوظيفة',
                  items: [
                    "السبت",
                    "الأحد ",
                    "الاثنين",
                    "الثلاثاء",
                    "الاربعاء",
                    "الخميس",
                    "الجمعة",
                  ],
                  controller: controller.day,
                  selectedValue: controller.selectedDay,
                  label: 'حالة الوظيفة',
                  customHeight: 25,
                  customWidth: currentWidth / 4,
                ),
              ],
            ),
            Column(
              children: [
                CustomTextField(
                  controller: controller.employee,
                  label: "الموظف",
                  customHeight: 25,
                  customWidth: currentWidth / 4,
                ),
                CustomTextField(
                  onTap: () => startDate.pickHijriDate(context),
                  suffixIcon: Icon(Icons.date_range_sharp),
                  controller: controller.startDate,
                  label: "تاريخ البداية",
                  customHeight: 25,
                  customWidth: currentWidth / 4,
                ),
                CustomTextField(
                  onTap: () => endDate.pickHijriDate(context),
                  suffixIcon: Icon(Icons.date_range_sharp),
                  controller: controller.endDate,
                  label: "تاريخ النهاية",
                  customHeight: 25,
                  customWidth: currentWidth / 4,
                ),
              ],
            ),
          ],
        ).scrollDirection(Axis.horizontal),
        CustomTextField(
          controller: controller.notes,
          label: 'ملاحظات',
          customHeight: 40,
          customWidth: currentWidth / 4,
        ),
        Row(
          children: [
            CustomButton(
              text: 'حفظ',
              onPressed: () => {},
              height: 35,
              width: 150,
            ),
            CustomButton(
                text: 'تفويض جديد', onPressed: () {}, height: 35, width: 150),
            CustomButton(
                text: 'التقرير', onPressed: () {}, height: 35, width: 150),
          ],
        ).scrollDirection(Axis.horizontal).center(),
      ]).paddingAll(15),
    ));
  }
}
