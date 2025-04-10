import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:municipality/core/constants/app_colors.dart';
import 'package:municipality/core/extensions/widget_extension.dart';
import 'package:municipality/core/functions/hijri_picker.dart';
import 'package:municipality/presentation/screens/base_screen.dart';
import 'package:municipality/presentation/widgets/custom_check_box.dart';
import 'package:municipality/presentation/widgets/custom_dropdown_button.dart';

import '../../../../../widgets/custom_button.dart';
import '../../../../../widgets/custom_text_feild.dart';
import '../controllers/employee_beanat_wazaef_asasea_controller.dart';

class EmployeeBeanatWazaefAsasea extends StatelessWidget {
  const EmployeeBeanatWazaefAsasea({super.key});

  @override
  Widget build(BuildContext context) {
    double currentWidth = Get.width;
    double currentHeight = Get.height;
    EmployeeBeanatWazaefAsaseaController controller =
        Get.put(EmployeeBeanatWazaefAsaseaController());
    HijriPicker graduationDate = HijriPicker(controller.graduationDate);
    return BaseScreen(
        widget: SizedBox(
      height: currentHeight,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            child: Column(
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
                        customWidth: 100),
                    CustomTextField(
                        label: 'بيانات الوظيفة',
                        customHeight: 25,
                        customWidth: 100),
                    CustomButton(
                            text: 'اختر',
                            onPressed: () {},
                            height: 25,
                            width: 40)
                        .paddingOnly(top: 20)
                  ],
                ).scrollDirection(Axis.horizontal),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CustomTextField(
                        label: 'رقم الموظف',
                        customHeight: 25,
                        customWidth: 100),
                    CustomDropdownButton(
                      label: ' حالة الوظيفة ',
                      height: 25,
                      width: 100,
                      item: controller.jobStatu,
                      list: controller.jobStatus,
                      onChanged: (value) {
                        controller.onChangeJobDataStatu(value);
                      },
                    ),
                    CustomTextField(
                      suffixIcon: const Icon(
                        Icons.date_range_sharp,
                        size: 15,
                      ),
                      onTap: () => graduationDate.pickHijriDate(context),
                      controller: controller.graduationDate,
                      label: "تاريخ شغل الوظيفة",
                      customHeight: 25,
                      customWidth: 150,
                    ),
                    CustomTextField(
                        label: ' تعديل رقم الموظف',
                        customHeight: 25,
                        customWidth: 100),
                    CustomDropdownButton(
                      label: 'نوع بيانات الوظيفة ',
                      height: 25,
                      width: 100,
                      item: controller.jobDataType,
                      list: controller.jobDataTypes,
                      onChanged: (value) {
                        controller.onChangeJobDataType(value);
                      },
                    ),
                    CustomTextField(
                        label: 'الرمز التصنيفي',
                        customHeight: 25,
                        customWidth: 100),
                    CustomTextField(
                        label: 'القسم', customHeight: 25, customWidth: 100),
                    CustomTextField(
                        label: '', customHeight: 25, customWidth: 100),
                    CustomButton(
                            text: 'اختر',
                            onPressed: () {},
                            height: 25,
                            width: 40)
                        .paddingOnly(top: 20)
                  ],
                ).scrollDirection(Axis.horizontal),
                Row(
                  children: [
                    CustomTextField(
                        label: 'المرتبة', customHeight: 25, customWidth: 100),
                    CustomTextField(
                        label: 'اسم الموظف ',
                        customHeight: 25,
                        customWidth: 100),
                    CustomTextField(
                        label: 'رقم السجل المدني/الإقامة',
                        customHeight: 25,
                        customWidth: 150),
                    CustomTextField(
                        label: 'مكان الصدور',
                        customHeight: 25,
                        customWidth: 100),
                    CustomTextField(
                      suffixIcon: const Icon(
                        Icons.date_range_sharp,
                        size: 15,
                      ),
                      onTap: () => graduationDate.pickHijriDate(context),
                      controller: controller.graduationDate,
                      label: "تاريخ الصدور",
                      customHeight: 25,
                      customWidth: 100,
                    ),
                    CustomTextField(
                        label: 'الدرجة', customHeight: 25, customWidth: 100),
                    CustomTextField(
                        label: '', customHeight: 25, customWidth: 100),
                    CustomButton(
                            text: 'اختر',
                            onPressed: () {},
                            height: 25,
                            width: 40)
                        .paddingOnly(top: 20)
                  ],
                ).scrollDirection(Axis.horizontal),
                Row(
                  children: [
                    CustomTextField(
                        label: 'رقم الحفيظة',
                        customHeight: 25,
                        customWidth: 100),
                    CustomTextField(
                        label: ' مكان الميلاد',
                        customHeight: 25,
                        customWidth: 100),
                    CustomTextField(
                      suffixIcon: const Icon(
                        Icons.date_range_sharp,
                        size: 15,
                      ),
                      onTap: () => graduationDate.pickHijriDate(context),
                      controller: controller.graduationDate,
                      label: "تاريخ الميلاد",
                      customHeight: 25,
                      customWidth: 150,
                    ),
                    CustomTextField(
                      suffixIcon: const Icon(
                        Icons.date_range_sharp,
                        size: 15,
                      ),
                      onTap: () => graduationDate.pickHijriDate(context),
                      controller: controller.graduationDate,
                      label: "تاريخ بداية الخدمة",
                      customHeight: 25,
                      customWidth: 150,
                    ),
                    CustomTextField(
                        label: 'مسمى الوظيفة',
                        customHeight: 25,
                        customWidth: 100),
                    CustomTextField(
                        label: '', customHeight: 25, customWidth: 100),
                    CustomButton(
                            text: 'اختر',
                            onPressed: () {},
                            height: 25,
                            width: 40)
                        .paddingOnly(top: 20)
                  ],
                ).scrollDirection(Axis.horizontal),
                Row(
                  children: [
                    CustomTextField(
                        label: 'اسم المؤهل العلمي',
                        customHeight: 25,
                        customWidth: 150),
                    CustomTextField(
                        label: 'اسم المؤسسة العلمية',
                        customHeight: 25,
                        customWidth: 150),
                    CustomTextField(
                      suffixIcon: const Icon(
                        Icons.date_range_sharp,
                        size: 15,
                      ),
                      onTap: () => graduationDate.pickHijriDate(context),
                      controller: controller.graduationDate,
                      label: "تاريخ التخرج",
                      customHeight: 25,
                      customWidth: 150,
                    ),
                    CustomTextField(
                        label: 'العنوان', customHeight: 25, customWidth: 100),
                    CustomTextField(
                        label: 'الهاتف', customHeight: 25, customWidth: 100),
                    CustomTextField(
                        label: 'الجنسية', customHeight: 25, customWidth: 100),
                    CustomTextField(
                        label: '', customHeight: 25, customWidth: 100),
                    CustomButton(
                            text: 'اختر',
                            onPressed: () {},
                            height: 25,
                            width: 40)
                        .paddingOnly(top: 20)
                  ],
                ).scrollDirection(Axis.horizontal),
                Row(
                  children: [
                    CustomTextField(
                        label: 'العمل المكلف به',
                        customHeight: 25,
                        customWidth: 100),
                    CustomTextField(
                      suffixIcon: const Icon(
                        Icons.date_range_sharp,
                        size: 15,
                      ),
                      onTap: () => graduationDate.pickHijriDate(context),
                      controller: controller.graduationDate,
                      label: "تاريخ بداية القرض",
                      customHeight: 25,
                      customWidth: 150,
                    ),
                    CustomTextField(
                      suffixIcon: const Icon(
                        Icons.date_range_sharp,
                        size: 15,
                      ),
                      onTap: () => graduationDate.pickHijriDate(context),
                      controller: controller.graduationDate,
                      label: "تاريخ نهاية القرض",
                      customHeight: 25,
                      customWidth: 150,
                    ),
                    CustomTextField(
                        label: 'المبلغ ', customHeight: 25, customWidth: 100),
                    CustomTextField(
                        label: 'القسط', customHeight: 25, customWidth: 100),
                    CustomTextField(
                        label: 'رقم بطاقة العمل',
                        customHeight: 25,
                        customWidth: 100),
                    CustomTextField(
                      suffixIcon: const Icon(
                        Icons.date_range_sharp,
                        size: 15,
                      ),
                      onTap: () => graduationDate.pickHijriDate(context),
                      controller: controller.graduationDate,
                      label: "تاريخ صدور البطاقة",
                      customHeight: 25,
                      customWidth: 150,
                    ),
                    CustomTextField(
                        label: 'تقاعد معاد',
                        customHeight: 25,
                        customWidth: 100),
                  ],
                ).scrollDirection(Axis.horizontal),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const SizedBox(
                      width: 200,
                    ),
                    CustomButton(
                      text: 'حفظ',
                      onPressed: () => {},
                      height: 30,
                      width: 80,
                    ),
                    CustomButton(
                      text: 'حذف',
                      onPressed: () => {},
                      height: 30,
                      width: 80,
                    ),
                    CustomButton(
                      text: 'عودة',
                      onPressed: () => {},
                      height: 30,
                      width: 80,
                    ),
                  ],
                ).scrollDirection(Axis.horizontal).center(),
              ],
            ).paddingAll(10),
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
                    ).paddingAll(10),
                  ).paddingAll(15).marginAll(10),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: AppColors.black)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text('موظف جديد '),
                        Obx(() {
                          return Container(
                            width: currentHeight * 0.2,
                            height: currentHeight * 0.2,
                            decoration: BoxDecoration(
                              color: AppColors.grey,
                              borderRadius: BorderRadius.circular(10),
                              image: controller.employeePhoto.value.isNotEmpty
                                  ? DecorationImage(
                                      image: NetworkImage(
                                          controller.employeePhoto.value),
                                      fit: BoxFit.fill,
                                    )
                                  : null,
                            ),
                            child: controller.employeePhoto.value.isEmpty
                                ? const Icon(Icons.add_a_photo,
                                    size: 50, color: Colors.white)
                                : null,
                          );
                        }).onTap(controller.pickImage).paddingAll(15),
                        Row(
                          children: [
                            CustomTextField(
                                label: 'جهة خطاب التعريف',
                                customHeight: 25,
                                customWidth: 150),
                            CustomCheckbox(
                              label: 'صورة',
                              value: controller.isPicture.value,
                              onChanged: (value) {
                                controller.onChangeIsPicture();
                              },
                            ).paddingOnly(top: 20),
                          ],
                        ),
                        Row(
                          children: [
                            CustomButton(
                                text: 'طباعة كارت تعريفي',
                                onPressed: () {},
                                height: 30,
                                width: 150),
                            CustomButton(
                              text: 'مشهد بالراتب',
                              height: 30,
                              width: 150,
                              onPressed: () {},
                            ),
                            CustomButton(
                                text: 'شهادة تعريف',
                                onPressed: () {},
                                height: 30,
                                width: 150),
                            CustomButton(
                                text: 'تاريخ طي القيد',
                                onPressed: () {},
                                height: 30,
                                width: 150),
                          ],
                        ),
                        Row(
                          children: [
                            CustomButton(
                                text: 'بيان خدمات موظف',
                                onPressed: () {},
                                height: 30,
                                width: 150),
                            CustomButton(
                                text: 'طباعة مكافئة عن الاجازات',
                                onPressed: () {},
                                height: 30,
                                width: 150),
                            CustomButton(
                                text: 'طباعة قرار طي القيد ',
                                onPressed: () {},
                                height: 30,
                                width: 150),
                          ],
                        ),
                      ],
                    ),
                  ).paddingAll(15).marginAll(10),
                ],
              ).scrollDirection(Axis.horizontal),
            ],
          )
        ],
      ).scrollDirection(Axis.horizontal),
    ));
  }
}
