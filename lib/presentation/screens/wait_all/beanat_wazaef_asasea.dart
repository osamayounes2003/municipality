import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:municipality/core/constants/app_colors.dart';
import 'package:municipality/core/extensions/widget_extension.dart';
import 'package:municipality/presentation/screens/base_screen.dart';

import '../../widgets/custom_button.dart';
import '../../widgets/custom_text_feild.dart';



class BeanatWazaefAsasea extends StatelessWidget {
  const BeanatWazaefAsasea({super.key});

  @override
  Widget build(BuildContext context) {

    double currentWidth = Get.width;
    double currentHeight = Get.height;
    return BaseScreen(
        widget: SizedBox(
      height: currentHeight,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            child: Column(
              //main column
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CustomTextField(
                        label: 'رقم الوظيفة',
                        customHeight: 25,
                        customWidth: 100),
                    CustomTextField(
                        label: 'بدلات الموظف',
                        customHeight: 25,
                        customWidth: 100),
                    CustomTextField(
                        label: 'الراتب', customHeight: 25, customWidth: 100),
                    CustomTextField(
                        label: 'بدل النقل', customHeight: 25, customWidth: 100),
                    CustomTextField(
                        label: 'العلاوة الدورية',
                        customHeight: 25,
                        customWidth: 100),
                    CustomTextField(
                        label: 'بدل انتداب داخلي',
                        customHeight: 25,
                        customWidth: 100),
                    CustomTextField(
                        label: 'بدل انتداب خارجي',
                        customHeight: 25,
                        customWidth: 100)
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CustomTextField(
                        label: 'رقم الموظف',
                        customHeight: 25,
                        customWidth: 150),
                    CustomTextField(
                        label: ' تعديل رقم الموظف',
                        customHeight: 25,
                        customWidth: 150),
                    CustomTextField(
                        label: 'نوع بيانات الوظيفة ',
                        customHeight: 25,
                        customWidth: 150),
                  ],
                ),
                Row(
                  children: [
                    CustomTextField(
                        label: 'مسمى الوظيفة',
                        customHeight: 25,
                        customWidth: 150),
                    CustomTextField(
                        label: 'الرمز التصنيفي',
                        customHeight: 25,
                        customWidth: 150),
                    CustomTextField(
                        label: 'القسم', customHeight: 25, customWidth: 150),
                  ],
                ),
                Row(
                  children: [
                    CustomTextField(
                        label: 'بيانات الوظيفة',
                        customHeight: 25,
                        customWidth: 100),
                    CustomTextField(
                        label: 'المرتبة', customHeight: 25, customWidth: 100),
                    CustomTextField(
                        label: 'الدرجة', customHeight: 25, customWidth: 100),
                  ],
                ),

                Row(
                  children: [
                    CustomTextField(
                        label: 'حالة الوظيفة',
                        customHeight: 25,
                        customWidth: 200),
                    Text('تاريخ شغل الوظيفة........ ...... .......هـ ')
                        .paddingAll(20),
                    SizedBox(width: currentWidth / 7),

                  ],
                ),
                Row(
                  children: [
                    CustomTextField(
                        label: 'اسم الموظف ',
                        customHeight: 25,
                        customWidth: 150),
                    CustomTextField(
                        label: 'الجنسية', customHeight: 25, customWidth: 150),
                    CustomTextField(
                        label: 'رقم السجل المدني/الإقامة',
                        customHeight: 25,
                        customWidth: 150),
                  ],
                ),
                Row(
                  children: [
                    CustomTextField(
                        label: 'رقم الحفيظة',
                        customHeight: 25,
                        customWidth: 250),
                    CustomTextField(
                        label: 'مكان الصدور',
                        customHeight: 25,
                        customWidth: 250),
                    Text('تاريخ الصدور........ ...... ......هـ')
                        .paddingAll(20),
                  ],
                ),
                Row(
                  children: [
                    CustomTextField(
                        label: ' مكان الميلاد',
                        customHeight: 25,
                        customWidth: 250),
                    Text('تاريخ الميلاد........ ...... .......هـ')
                        .paddingAll(20),
                    Text('تاريخ بداية الخدمة........ ...... ......هـ')
                        .paddingAll(20),
                  ],
                ),
                Row(
                  children: [
                    CustomTextField(
                        label: 'اسم المؤهل العلمي',
                        customHeight: 25,
                        customWidth: 250),
                    CustomTextField(
                        label: 'اسم المؤسسة العلمية',
                        customHeight: 25,
                        customWidth: 250),
                    Text('تاريخ التخرج........ ...... ......هـ')
                        .paddingAll(20),
                  ],
                ),
                Row(
                  children: [
                    CustomTextField(
                        label: 'العنوان', customHeight: 25, customWidth: 250),
                    CustomTextField(
                        label: 'الهاتف', customHeight: 25, customWidth: 250),
                  ],
                ),
                CustomTextField(
                    label: 'العمل المكلف به',
                    customHeight: 25,
                    customWidth: 250),
                Row(
                  children: [
                    CustomTextField(
                        label: 'رقم بطاقة العمل',
                        customHeight: 25,
                        customWidth: 250),
                    //TODO HIJRI DATE

                    Text('تاريخ صدور البطاقة........ ...... ......هـ')
                        .paddingAll(20),
                  ],
                ),
                Row(
                  children: [
                    //TODO HIJRI DATE
                    Text('تاريخ بداية القرض........ ...... .....هـ')
                        .paddingAll(15),
                    CustomTextField(
                        label: 'المبلغ ', customHeight: 25, customWidth: 100),
                    CustomTextField(
                        label: 'القسط', customHeight: 25, customWidth: 100),
                  ],
                ),
                Row(
                  children: [
                    //TODO HIJRI DATE
                    Text('تاريخ نهاية القرض........ ...... ......هـ')
                        .paddingAll(15),
                    CustomTextField(
                        label: 'تقاعد معاد',
                        customHeight: 25,
                        customWidth: 150),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const SizedBox(
                      width: 200,
                    ),
                    CustomButton(
                      text: 'حفظ',
                      onPressed: () => {},
                      height: 50,
                      width: 80,
                    ),
                    CustomButton(
                      text: 'حذف',
                      onPressed: () => {},
                      height: 50,
                      width: 80,
                    ),
                    CustomButton(
                      text: 'عودة',
                      onPressed: () => {},
                      height: 50,
                      width: 80,
                    ),
                  ],
                ).scrollDirection(Axis.horizontal),
              ],
            ).scrollDirection(Axis.vertical),
          ),
          //////
          Column(
            children: [
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: AppColors.black)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('مسير الرواتب'),
                        SizedBox(
                          height: 25,
                          child: Divider(
                            height: 5,
                            color: AppColors.black,
                          ),
                          width: currentWidth / 4,
                        ),
                        Text('البدلات'),
                        CustomTextField(
                            label: 'ضرر/عدوى',
                            customHeight: 25,
                            customWidth: 150),
                        CustomTextField(
                            label: 'أخرى', customHeight: 25, customWidth: 150),
                        SizedBox(
                          height: 25,
                          width: currentWidth / 4,
                          child: const Divider(
                            height: 5,
                            color: AppColors.black,
                          ),
                        ),
                        Row(
                          children: [
                            CustomTextField(
                                label: 'بنك التسليف',
                                customHeight: 25,
                                customWidth: 100),
                            CustomTextField(
                                label: 'رقم العقد',
                                customHeight: 25,
                                customWidth: 150),
                          ],
                        ),
                        Row(
                          children: [
                            CustomTextField(
                                label: 'عقاري',
                                customHeight: 25,
                                customWidth: 100),
                            CustomTextField(
                                label: 'رقم العقد',
                                customHeight: 25,
                                customWidth: 150),
                          ],
                        ),
                        CustomTextField(
                            label: 'البنك الزراعي ',
                            customHeight: 25,
                            customWidth: 150),
                        CustomTextField(
                            label: 'التأمين الصحي',
                            customHeight: 25,
                            customWidth: 150),
                        CustomTextField(
                            label: 'أخرى', customHeight: 25, customWidth: 150),
                      ],
                    ),
                  ).paddingAll(15).marginAll(10),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: AppColors.black)),
                    child: Column(
                      children: [
                        // Text('موظف جديد '),
                        // Container(
                        //   width: 150,
                        //   height: 150,
                        //   decoration: BoxDecoration(
                        //     borderRadius: BorderRadius.circular(10),
                        //     border: Border.all(color: AppColors.grey),
                        //     image: controller.imageUrl.value.isNotEmpty
                        //         ? DecorationImage(
                        //             image:
                        //                 NetworkImage(controller.imageUrl.value),
                        //             fit: BoxFit.cover,
                        //           )
                        //         : null,
                        //   ),
                        //   child: controller.imageUrl.value.isEmpty
                        //       ? const Center(child: Text('إضافة صورة'))
                        //       : null,
                        // ),
                        // CustomButton(text: 'طباعة كارت تعريفي', onPressed: (){}, height: 40, width: 100),
                        //
                        //     Row(
                        //       children: [
                        //         Column(
                        //           children: [
                        //             CustomTextField(label: 'جهة خطاب التعريف', customHeight: 25, customWidth: 100),
                        //                                     Checkbox(value: false, onChanged: (p){}),
                        //           ],
                        //         ) ,
                        //         Column(
                        //           children: [
                        //             CustomButton(text: 'مشهد بالراتب', onPressed: (){}, height: 25, width: 50),
                        //                                     CustomButton(text: 'شهادة تعريف', onPressed: (){}, height: 25, width: 50),
                        //           ],
                        // //         ),
                        //       ],
                        //     ),
                        //
                        //
                        //
                        // CustomButton(text: 'بيان خدمات موظف', onPressed: (){}, height: 40, width: 150),
                        // CustomButton(text: 'طباعة مكافئة عن الاجازات', onPressed: (){}, height: 40, width: 150),
                        // Text('تاريخ طي القيد..........................'),
                        // CustomButton(text: 'طباعة قرار طي القيد ', onPressed: (){}, height: 40, width: 150),

                      ],
                    ),
                  ).paddingAll(15).marginAll(10),

                ],
              ),


            ],
          )
        ],
      ).scrollDirection(Axis.horizontal),
    ));
  }
}
