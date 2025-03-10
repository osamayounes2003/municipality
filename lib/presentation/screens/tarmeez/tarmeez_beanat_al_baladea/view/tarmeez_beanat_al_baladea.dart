import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:municipality/core/constants/app_colors.dart';
import 'package:municipality/core/extensions/widget_extension.dart';
import 'package:municipality/core/functions/image_picker.dart';
import 'package:municipality/presentation/screens/base_screen.dart';

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

    late HijriPicker picker1 = HijriPicker(controller.tareekhBedaeaIterarea);
    late HijriPicker picker2 = HijriPicker(controller.tareekhNehaeaIterarea);
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
                          customHeight: currentHeight / 20,
                          customWidth: currentWidth / 5),
                      CustomTextField(
                          label: 'اسم رئيس البلدية',
                          customHeight: currentHeight / 20,
                          customWidth: currentWidth / 5),
                      CustomTextField(
                          label: 'اسم نائب رئيس البلدية',
                          customHeight: currentHeight / 20,
                          customWidth: currentWidth / 5),
                    ],
                  ).scrollDirection(Axis.horizontal),
                  Row(
                    children: [
                      CustomTextField(
                          label: 'مدير إدارة الشؤون المالية والإدارية ',
                          customHeight: currentHeight / 20,
                          customWidth: currentWidth / 5),
                      CustomTextField(
                          label: 'اسم مدير قسم شؤون الوظفين',
                          customHeight: currentHeight / 20,
                          customWidth: currentWidth / 5),
                      CustomTextField(
                          label: 'اسم المدقق',
                          customHeight: currentHeight / 20,
                          customWidth: currentWidth / 5),
                    ],
                  ).scrollDirection(Axis.horizontal),
                  Row(
                    children: [
                      CustomTextField(
                          label: 'اسم مدير الشؤون المالية',
                          customHeight: currentHeight / 20,
                          customWidth: currentWidth / 5),
                      CustomTextField(
                          label: 'اسم الموظف المختص',
                          customHeight: currentHeight / 20,
                          customWidth: currentWidth / 5),
                      CustomTextField(
                          label: 'اسم الموظف المختص المساعد',
                          customHeight: currentHeight / 20,
                          customWidth: currentWidth / 5),
                    ],
                  ).scrollDirection(Axis.horizontal),
                  Row(
                    children: [
                      CustomTextField(
                          label: 'نسبة بدل غلاء المعيشة',
                          customHeight: currentHeight / 20,
                          customWidth: currentWidth / 5),
                      CustomTextField(
                          label: 'رئيس قسم الحركة والصيانة',
                          customHeight: currentHeight / 20,
                          customWidth: currentWidth / 5),
                      CustomTextField(
                          label: 'IPAN البلدية',
                          customHeight: currentHeight / 20,
                          customWidth: currentWidth / 5),
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
                      height: currentHeight / 15,
                      width: currentWidth / 10),
                  CustomButton(
                      text: "العلاوات السنوية",
                      onPressed: () {},
                      height: currentHeight / 15,
                      width: currentWidth / 10),
                  CustomButton(
                      text: "تعديل ",
                      onPressed: () {},
                      height: currentHeight / 15,
                      width: currentWidth / 10),
                ],
              ).scrollDirection(Axis.vertical),
              Spacer(
                flex: 2,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CustomButton(
                      text: 'حفظ',
                      onPressed: () {
                        print(controller.tareekhBedaeaIterarea.text);
                        print(controller.municipalitySymbol.value);
                      },
                      height: currentHeight / 15,
                      width: currentWidth / 15),
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
                          controller: controller.tareekhBedaeaIterarea,
                          customHeight: 25,
                          customWidth: 200,
                          suffixIcon: IconButton(
                            onPressed: () => picker1.pickHijriDate(context),
                            icon: const Icon(
                              Icons.calendar_today,
                              size: 15,
                            ),
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
                          controller: controller.tareekhNehaeaIterarea,
                          customHeight: 25,
                          customWidth: 200,
                          suffixIcon: IconButton(
                            onPressed: () => picker2.pickHijriDate(context),
                            icon: const Icon(
                              Icons.calendar_today,
                              size: 15,
                            ),
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
