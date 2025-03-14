import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:municipality/core/constants/app_colors.dart';
import 'package:municipality/core/extensions/widget_extension.dart';
import 'package:municipality/presentation/screens/base_screen.dart';
import '../../../../../core/functions/hijri_picker.dart';
import '../../../../widgets/custom_button.dart';
import '../../../../widgets/custom_text_feild.dart';
import '../controller/baladia_info_controller.dart';

class BaladiaInfo extends StatelessWidget {
  const BaladiaInfo({super.key});

  @override
  Widget build(BuildContext context) {
    final BaladiaInfoController controller = Get.put(BaladiaInfoController());

    late HijriPicker picker1 = HijriPicker(controller.tareekhBedaeaIterarea);
    late HijriPicker picker2 = HijriPicker(controller.tareekhNehaeaIterarea);
    double currentWidth = Get.width;
    double currentHeight = Get.height;
    return BaseScreen(
      widget: ListView(
        shrinkWrap: true,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      CustomTextField(
                          controller: controller.municipality,
                          label: 'اسم البلدية',
                          customHeight: currentHeight / 20,
                          customWidth: currentWidth / 5),
                      CustomTextField(
                          controller: controller.mayor,
                          label: 'اسم رئيس البلدية',
                          customHeight: currentHeight / 20,
                          customWidth: currentWidth / 5),
                      CustomTextField(
                          controller: controller.deputyMayor,
                          label: 'اسم نائب رئيس البلدية',
                          customHeight: currentHeight / 20,
                          customWidth: currentWidth / 5),
                    ],
                  ).scrollDirection(Axis.horizontal),
                  Row(
                    children: [
                      CustomTextField(
                          controller: controller.modeerIdaraShoonMaliaIdarea,
                          label: 'مدير إدارة الشؤون المالية والإدارية ',
                          customHeight: currentHeight / 20,
                          customWidth: currentWidth / 5),
                      CustomTextField(
                          controller: controller.modeerShoonMawadafeen,
                          label: 'اسم مدير قسم شؤون الوظفين',
                          customHeight: currentHeight / 20,
                          customWidth: currentWidth / 5),
                      CustomTextField(
                          controller: controller.modakek,
                          label: 'اسم المدقق',
                          customHeight: currentHeight / 20,
                          customWidth: currentWidth / 5),
                    ],
                  ).scrollDirection(Axis.horizontal),
                  Row(
                    children: [
                      CustomTextField(
                          controller: controller.modeerShoonMalia,
                          label: 'اسم مدير الشؤون المالية',
                          customHeight: currentHeight / 20,
                          customWidth: currentWidth / 5),
                      CustomTextField(
                          controller: controller.mowazafMokhtas,
                          label: 'اسم الموظف المختص',
                          customHeight: currentHeight / 20,
                          customWidth: currentWidth / 5),
                      CustomTextField(
                          controller: controller.mowazafMokhtasMosaed,
                          label: 'اسم الموظف المختص المساعد',
                          customHeight: currentHeight / 20,
                          customWidth: currentWidth / 5),
                    ],
                  ).scrollDirection(Axis.horizontal),
                  Row(
                    children: [
                      CustomTextField(
                          controller: controller.badalGhalaaMaeshaa,
                          label: 'نسبة بدل غلاء المعيشة',
                          customHeight: currentHeight / 20,
                          customWidth: currentWidth / 5),
                      CustomTextField(
                          controller: controller.kisimHarakaSeana,
                          label: 'رئيس قسم الحركة والصيانة',
                          customHeight: currentHeight / 20,
                          customWidth: currentWidth / 5),
                      CustomTextField(
                          controller: controller.baladeaIPAN,
                          label: 'IPAN البلدية',
                          customHeight: currentHeight / 20,
                          customWidth: currentWidth / 5),
                    ],
                  ).scrollDirection(Axis.horizontal),
                ],
              ),
            ],
          ).scrollDirection(Axis.horizontal).marginOnly(right: 200),
          Row(
            children: [
              Expanded(
                  flex: 2,
                  child: Column(
                    children: [
                      CustomButton(
                          text: "ضبط التواريخ",
                          onPressed: () {
                            print(controller.kisimHarakaSeana.text);
                          },
                          height: 40,
                          width: 120),
                      CustomButton(
                          text: "العلاوات السنوية",
                          onPressed: () {},
                          height: 40,
                          width: 120),
                      CustomButton(
                          text: "تعديل ",
                          onPressed: () {},
                          height: 40,
                          width: 120),
                    ],
                  ).scrollDirection(Axis.vertical)),
              Expanded(
                  flex: 1,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      CustomButton(
                          text: 'حفظ',
                          onPressed: () {
                            print(controller.tareekhBedaeaIterarea.text);
                            print(controller.municipalitySymbol.value);
                          },
                          height: 40,
                          width: 120),
                    ],
                  )),
              Expanded(
                  flex: 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(
                        children: [
                          CustomTextField(
                            label: 'تاريخ بداية الاضرارية',
                            onTap: () => picker1.pickHijriDate(context),
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
                      ).scrollDirection(Axis.horizontal),
                      Row(
                        children: [
                          CustomTextField(
                            label: 'تاريخ نهاية الاضرارية',
                            controller: controller.tareekhNehaeaIterarea,
                            customHeight: 25,
                            customWidth: 200,
                            onTap: () => picker2.pickHijriDate(context),
                            suffixIcon: IconButton(
                              onPressed: () => picker2.pickHijriDate(context),
                              icon: const Icon(
                                Icons.calendar_today,
                                size: 15,
                              ),
                            ),
                          )
                        ],
                      ).scrollDirection(Axis.horizontal),
                    ],
                  )),
              Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('شعار البلدية '),
                    Obx(() {
                      return Container(
                        width: currentHeight * 0.2,
                        height: currentHeight * 0.2,
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
                ).scrollDirection(Axis.vertical),
              ),
            ],
          ).scrollDirection(Axis.vertical).marginOnly(right: 100),
        ],
      ),
    );
  }
}
