import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:municipality/constants/app_colors.dart';
import 'package:municipality/core/extensions/widget_extension.dart';
import 'package:municipality/presentation/screens/base_screen.dart';
import 'package:municipality/presentation/screens/tarmeez/tarmeez_controller.dart';
import 'package:municipality/presentation/wedgits/custom_button.dart';
import 'package:municipality/presentation/wedgits/custom_text_feild.dart';

class TarmeezBeanatAlBaladea extends StatelessWidget {
  const TarmeezBeanatAlBaladea({super.key});

  @override
  Widget build(BuildContext context) {
    double currentWidth = Get.width;
    double currentHeight = Get.height;
    return BaseScreen(
      widget: ListView(
        shrinkWrap: true,
        children: [
         Column(
           children: [
             Row(
                  children: [
                    CustomTextField(
                        label: 'اسم البلدية',
                        customHeight: currentHeight / 15,
                        customWidth: currentWidth / 3),
                    CustomTextField(
                        label: 'اسم رئيس البلدية',
                        customHeight: currentHeight / 15,
                        customWidth: currentWidth / 3),
                    CustomTextField(
                        label: 'اسم نائب رئيس البلدية',
                        customHeight: currentHeight / 15,
                        customWidth: currentWidth / 4),
                  ],
                ).scrollDirection(Axis.horizontal),

                     Row(
                  children: [
                    CustomTextField(
                        label: 'مدير إدارة الشؤون المالية والإدارية ',
                        customHeight: currentHeight / 15,
                        customWidth: currentWidth / 3),
                    CustomTextField(
                        label: 'اسم مدير قسم شؤون الوظفين',
                        customHeight: currentHeight / 15,
                        customWidth: currentWidth / 3),
                    CustomTextField(
                        label: 'اسم المدقق',
                        customHeight: currentHeight / 15,
                        customWidth: currentWidth / 4),
                  ],
                ).scrollDirection(Axis.horizontal),

                     Row(
                  children: [
                    CustomTextField(
                        label: 'اسم مدير الشؤون المالية',
                        customHeight: currentHeight / 15,
                        customWidth: currentWidth / 3),
                    CustomTextField(
                        label: 'اسم الموظف المختص',
                        customHeight: currentHeight / 15,
                        customWidth: currentWidth / 3),
                    CustomTextField(
                        label: 'اسم الموظف المختص المساعد',
                        customHeight: currentHeight / 15,
                        customWidth: currentWidth / 4),
                  ],
                ).scrollDirection(Axis.horizontal),

                    Row(
                  children: [
                    CustomTextField(
                        label: 'نسبة بدل غلاء المعيشة',
                        customHeight: currentHeight / 15,
                        customWidth: currentWidth / 3),
                    CustomTextField(
                        label: 'رئيس قسم الحركة والصيانة',
                        customHeight: currentHeight / 15,
                        customWidth: currentWidth / 3),
                    CustomTextField(
                        label: 'IPAN البلدية',
                        customHeight: currentHeight / 15,
                        customWidth: currentWidth / 4),
                  ],

              ).scrollDirection(Axis.horizontal),
           ],
         ),
      Row(
              children: [
                Column(
                  children: [
                    CustomButton(
                        text: "ضبط التواريخ",
                        onPressed: () {},
                        height: currentHeight / 10,
                        width: currentWidth / 5),
                    CustomButton(
                        text: "العلاوات السنوية",
                        onPressed: () {},
                        height: currentHeight / 10,
                        width: currentWidth / 5),
                    CustomButton(
                        text: "تعديل ",
                        onPressed: () {},
                        height: currentHeight / 10,
                        width: currentWidth / 5),
                  ],
                ),
                Spacer(flex: 2,),
                Column(
                  children: [

                    CustomButton(text: 'حفظ', onPressed: (){}, height: currentHeight/10, width: currentWidth/10),
                  ],

                ),
                Spacer(flex: 2,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                      height: currentHeight/11,
                      child: const Row(children: [
                        Text('تاريخ بداية الاضرارية :............................ ')
                      ],),
                    ),
                    SizedBox(
                      // TODO Hijri date
                      height: currentHeight/11,
                      child: const Row(children: [
                        Text('تاريخ نهاية  الاضرارية :............................. ')
                      ],),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text('شعار للبلدية '),
                    Obx(() {
                      final ImagePickerController controller =
                          Get.put(ImagePickerController());
                      return Container(
            
                        width: 200,
                        height: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: AppColors.grey),
                          image: controller.imageUrl.value.isNotEmpty
                              ? DecorationImage(
                                  image: NetworkImage(controller.imageUrl.value),
                                  fit: BoxFit.cover,
                                )
                              : null,
                        ),
                        child: controller.imageUrl.value.isEmpty
                            ? const Center(child: Text('إضافة شعار للبلدية'))
                            : null,
                      ).onTap(controller.pickImage).paddingOnly(left: 20 ,right: 20 ,bottom: 20 ,top: 10);
                    }),
                  ],
                ),
              ],
            ).scrollDirection(Axis.vertical),
          
        ],
      ),
    );
  }
}
