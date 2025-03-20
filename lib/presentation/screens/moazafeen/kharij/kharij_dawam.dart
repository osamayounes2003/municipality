import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:municipality/core/extensions/widget_extension.dart';
import 'package:municipality/presentation/screens/base_screen.dart';
import 'package:municipality/presentation/screens/moazafeen/kharij/kharij_controller.dart';
import 'package:municipality/presentation/screens/moazafeen/tafweed/tafweed_controller.dart';

import '../../../../core/functions/hijri_picker.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/custom_text_feild.dart';

class KharijDawam extends StatelessWidget {
  const KharijDawam({super.key});

  @override
  Widget build(BuildContext context) {
    double currentWidth = Get.width;
    double currentHeight = Get.height;
    KharijController controller = Get.put(KharijController());

    late HijriPicker qararDate = HijriPicker(controller.qararDate);
    late HijriPicker khitabDate = HijriPicker(controller.khitabDate);
    late HijriPicker startDateKharij = HijriPicker(controller.startDateKharij);
    late HijriPicker endDateKharij = HijriPicker(controller.endDateKharij);
    return Scaffold(
        body: BaseScreen(
            widget: Center(
      child: ListView(shrinkWrap: true, children: [
        SizedBox(
            width: currentWidth,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CustomTextField(
                      controller: controller.day,
                      label: "اليوم",
                      customHeight: 25,
                      customWidth: currentWidth * 0.5,
                    ),
                    SizedBox(
                      width: currentWidth * 0.09,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Checkbox(
                                value: true,
                                onChanged: (v) {
                                  v = !v!;
                                }),
                            Text('عيد الفطر ')
                          ],
                        ),
                        Row(
                          children: [
                            Checkbox(value: true, onChanged: (v) {}),
                            Text('عيد الأضحى '),
                          ],
                        )
                      ],
                    )
                  ],
                ).scrollDirection(Axis.horizontal),
                CustomTextField(
                  controller: controller.mission,
                  label: "اسم المهمة ",
                  customHeight: 25,
                  customWidth: currentWidth * 0.68,
                ).scrollDirection(
                  Axis.horizontal,
                ),
                Row(
                  children: [
                    CustomTextField(
                      controller: controller.mosalsal,
                      label: "مسلسل",
                      customHeight: 25,
                      customWidth: currentWidth / 3,
                    ),
                    CustomTextField(
                      controller: controller.part,
                      label: "اسم القسم ",
                      customHeight: 25,
                      customWidth: currentWidth / 3,
                    ),
                  ],
                ).scrollDirection(Axis.horizontal),
                Row(
                  children: [
                    CustomTextField(
                      controller: controller.qararNum,
                      label: "رقم القرار",
                      customHeight: 25,
                      customWidth: currentWidth / 3,
                    ),
                    CustomTextField(
                      suffixIcon: const Icon(
                        Icons.date_range_sharp,
                        size: 15,
                      ),
                      onTap: () => qararDate.pickHijriDate(context),
                      controller: controller.qararDate,
                      label: "تاريخ القرار",
                      customHeight: 25,
                      customWidth: currentWidth / 3,
                    ),
                  ],
                ).scrollDirection(Axis.horizontal),
                Row(
                  children: [
                    CustomTextField(
                      controller: controller.dayNum,
                      label: "عدد الايام",
                      customHeight: 25,
                      customWidth: currentWidth / 3,
                    ),
                    CustomTextField(
                      controller: controller.hoursNumRate,
                      label: "معدل عدد الساعات",
                      customHeight: 25,
                      customWidth: currentWidth / 3,
                    ),
                  ],
                ).scrollDirection(Axis.horizontal),
                Row(
                  children: [
                    CustomTextField(
                      controller: controller.khitamNum,
                      label: "رقم الخطاب",
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
                  ],
                ).scrollDirection(Axis.horizontal),
                Row(
                  children: [
                    CustomTextField(
                      suffixIcon: const Icon(
                        Icons.date_range_sharp,
                        size: 15,
                      ),
                      onTap: () => startDateKharij.pickHijriDate(context),
                      controller: controller.startDateKharij,
                      label: "تاريخ بداية خارج دوام",
                      customHeight: 25,
                      customWidth: currentWidth / 3,
                    ),
                    CustomTextField(
                      suffixIcon: const Icon(
                        Icons.date_range_sharp,
                        size: 15,
                      ),
                      onTap: () => endDateKharij.pickHijriDate(context),
                      controller: controller.endDateKharij,
                      label: "تاريخ نهاية خارج دوام",
                      customHeight: 25,
                      customWidth: currentWidth / 3,
                    ),
                  ],
                ).scrollDirection(Axis.horizontal),
                SizedBox(
                  height: 75,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomButton(
                        text: 'حفظ', onPressed: () {}, height: 30, width: 120)
                  ],
                ).scrollDirection(Axis.horizontal)
              ],
            )).paddingAll(5),
      ]),
    )));
  }
}
