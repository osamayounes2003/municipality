import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:municipality/core/extensions/widget_extension.dart';
import 'package:municipality/core/functions/hijri_picker.dart';
import 'package:municipality/presentation/screens/base_screen.dart';
import 'package:municipality/presentation/screens/moazafeen/iqrar/iqrar_controller.dart';
import 'package:municipality/presentation/screens/moazafeen/tafweed/tafweed_controller.dart';

import '../../../widgets/custom_button.dart';
import '../../../widgets/custom_text_feild.dart';

class Iqrar extends StatelessWidget {
  const Iqrar({super.key});

  @override
  Widget build(BuildContext context) {
    double currentWidth = Get.width;
    double currentHeight = Get.height;
    IqrarController controller = Get.put(IqrarController());
    HijriPicker iqrarDate = HijriPicker(controller.iqrarDate);
    HijriPicker khitabDate = HijriPicker(controller.khitabDate);
    return Scaffold(
        body: BaseScreen(
            widget: Center(
      child: ListView(shrinkWrap: true, children: [
        SizedBox(
            width: currentWidth,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
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
                Row(
                  children: [
                    CustomButton(
                      text: 'إقرار جديد',
                      onPressed: () => {},
                      height: 35,
                      width: 150,
                    ),
                    CustomButton(
                        text: 'التقرير',
                        onPressed: () {},
                        height: 35,
                        width: 150),
                    CustomButton(
                        text: 'حفظ', onPressed: () {}, height: 35, width: 150),
                  ],
                ).scrollDirection(Axis.horizontal),
              ],
            )).paddingAll(5),
      ]),
    )));
  }
}
