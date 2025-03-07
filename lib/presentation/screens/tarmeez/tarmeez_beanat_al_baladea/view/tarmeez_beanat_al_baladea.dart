import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:municipality/core/constants/app_colors.dart';
import 'package:municipality/core/extensions/widget_extension.dart';
import 'package:municipality/core/functions/image_picker.dart';
import 'package:municipality/presentation/screens/base_screen.dart';
import 'package:municipality/presentation/screens/tarmeez/tarmeez_controller.dart';

import '../../../../../core/functions/hijri_picker.dart';
import '../../../../widgets/custom_button.dart';
import '../../../../widgets/custom_text_feild.dart';
import '../controller/beanat_al_bladea_controller.dart';

class TarmeezBeanatAlBaladea extends StatelessWidget {
  const TarmeezBeanatAlBaladea({super.key});

  @override
  Widget build(BuildContext context) {
    final BeanatAlBaladeaController controller =
        Get.put(BeanatAlBaladeaController());

    late HijriPicker picker1 = HijriPicker(controller.hijriController1);
    late HijriPicker picker2 = HijriPicker(controller.hijriController2);
    double currentWidth = Get.width;
    double currentHeight = Get.height;
    return BaseScreen(
      widget: ListView(
        shrinkWrap: true,
        children: [
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CustomTextField(
                          label: 'اسم البلدية',
                          customHeight: currentHeight / 17,
                          customWidth: currentWidth / 3.5),
                      CustomTextField(
                          label: 'اسم رئيس البلدية',
                          customHeight: currentHeight / 17,
                          customWidth: currentWidth / 3.5),
                      CustomTextField(
                          label: 'اسم نائب رئيس البلدية',
                          customHeight: currentHeight / 17,
                          customWidth: currentWidth / 3.5),
                    ],
                  ).scrollDirection(Axis.horizontal),
                  Row(
                    children: [
                      CustomTextField(
                          label: 'مدير إدارة الشؤون المالية والإدارية ',
                          customHeight: currentHeight / 17,
                          customWidth: currentWidth / 3.5),
                      CustomTextField(
                          label: 'اسم مدير قسم شؤون الوظفين',
                          customHeight: currentHeight / 17,
                          customWidth: currentWidth / 3.5),
                      CustomTextField(
                          label: 'اسم المدقق',
                          customHeight: currentHeight / 17,
                          customWidth: currentWidth / 3.5),
                    ],
                  ).scrollDirection(Axis.horizontal),
                  Row(
                    children: [
                      CustomTextField(
                          label: 'اسم مدير الشؤون المالية',
                          customHeight: currentHeight / 17,
                          customWidth: currentWidth / 3.5),
                      CustomTextField(
                          label: 'اسم الموظف المختص',
                          customHeight: currentHeight / 17,
                          customWidth: currentWidth / 3.5),
                      CustomTextField(
                          label: 'اسم الموظف المختص المساعد',
                          customHeight: currentHeight / 17,
                          customWidth: currentWidth / 3.5),
                    ],
                  ).scrollDirection(Axis.horizontal),
                  Row(
                    children: [
                      CustomTextField(
                          label: 'نسبة بدل غلاء المعيشة',
                          customHeight: currentHeight / 17,
                          customWidth: currentWidth / 3.5),
                      CustomTextField(
                          label: 'رئيس قسم الحركة والصيانة',
                          customHeight: currentHeight / 17,
                          customWidth: currentWidth / 3.5),
                      CustomTextField(
                          label: 'IPAN البلدية',
                          customHeight: currentHeight / 17,
                          customWidth: currentWidth / 3.5),
                    ],
                  ).scrollDirection(Axis.horizontal),
                ],
              ),
            ],
          ),
          Row(
            children: [
              Column(
                children: [
                  CustomButton(
                      text: "ضبط التواريخ",
                      onPressed: () {},
                      height: currentHeight / 12,
                      width: currentWidth / 7),
                  CustomButton(
                      text: "العلاوات السنوية",
                      onPressed: () {},
                      height: currentHeight / 12,
                      width: currentWidth / 7),
                  CustomButton(
                      text: "تعديل ",
                      onPressed: () {},
                      height: currentHeight / 12,
                      width: currentWidth / 7),
                ],
              ).scrollDirection(Axis.vertical),
              Spacer(
                flex: 2,
              ),
              Column(
                children: [
                  CustomButton(
                      text: 'حفظ',
                      onPressed: () {
                        print(controller.hijriController1.text);
                        print(controller.municipalitySymbol.value);
                      },
                      height: currentHeight / 13,
                      width: currentWidth / 12),
                ],
              ),
              Spacer(
                flex: 2,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    height: currentHeight / 11,
                    child: Row(
                      children: [
                        CustomTextField(
                          label: 'تاريخ بداية الاضرارية',
                          controller: controller.hijriController1,
                          customHeight: 25,
                          customWidth: 200,
                          suffixIcon: IconButton(
                            onPressed: () => picker1.pickHijriDate(context),
                            icon: const Icon(Icons.calendar_today),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: currentHeight / 11,
                    child: Row(
                      children: [
                        CustomTextField(
                          label: 'تاريخ نهاية الاضرارية',
                          controller: controller.hijriController2,
                          customHeight: 25,
                          customWidth: 200,
                          suffixIcon: IconButton(
                            onPressed: () => picker2.pickHijriDate(context),
                            icon: const Icon(Icons.calendar_today),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('شعار البلدية '),
                  Obx(() {
                    return Container(
                      width: 200,
                      height: 200,
                      decoration: BoxDecoration(
                        color: AppColors.grey,
                        borderRadius: BorderRadius.circular(10),
                        image: controller.municipalitySymbol.value.isNotEmpty
                            ? DecorationImage(
                                image: NetworkImage(
                                    controller.municipalitySymbol.value),
                                fit: BoxFit.fill,
                              )
                            : null,
                      ),
                      child: controller.municipalitySymbol.value.isEmpty
                          ? const Icon(Icons.add_a_photo,
                              size: 50, color: Colors.white)
                          : null,
                    );
                  }).onTap(controller.pickImage).paddingAll(15)
                ],
              )
            ],
          ).scrollDirection(Axis.vertical),
        ],
      ),
    );
  }
}
