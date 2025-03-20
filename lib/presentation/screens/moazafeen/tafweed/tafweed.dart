import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:municipality/core/extensions/widget_extension.dart';
import 'package:municipality/presentation/screens/base_screen.dart';
import 'package:municipality/presentation/screens/moazafeen/tafweed/tafweed_controller.dart';

import '../../../widgets/custom_button.dart';
import '../../../widgets/custom_text_feild.dart';

class Tafweed extends StatelessWidget {
  const Tafweed({super.key});

  @override
  Widget build(BuildContext context) {
    double currentWidth = Get.width;
    double currentHeight = Get.height;
    TafweedController controller = Get.put(TafweedController());
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
                  controller: controller.mawdoouh,
                  label: "الموضوع",
                  customHeight: 25,
                  customWidth: currentWidth / 3,
                ),
                CustomTextField(
                  controller: controller.day,
                  label: "اليوم",
                  customHeight: 25,
                  customWidth: currentWidth / 3,
                ),
                CustomTextField(
                  controller: controller.employee,
                  label: "الموظف",
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
                    CustomButton(
                      text: 'حفظ',
                      onPressed: () => {},
                      height: 35,
                      width: 150,
                    ),
                    CustomButton(
                        text: 'تفويض جديد',
                        onPressed: () {},
                        height: 35,
                        width: 150),
                    CustomButton(
                        text: 'التقرير',
                        onPressed: () {},
                        height: 35,
                        width: 150),
                  ],
                ).scrollDirection(Axis.horizontal),
              ],
            )).paddingAll(5),
      ]),
    )));
  }
}
