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
import '../../../../../widgets/custom_radio_list_tile.dart';
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
    HijriPicker sodorDate = HijriPicker(controller.sodorDate);
    HijriPicker dateOfBirth = HijriPicker(controller.dateOfBirth);
    HijriPicker serviceStartDate = HijriPicker(controller.serviceStartDate);
    HijriPicker loanStartDate = HijriPicker(controller.loanStartDate);
    HijriPicker loanEndDate = HijriPicker(controller.loanEndDate);
    HijriPicker cardSodorDate = HijriPicker(controller.cardSodorDate);
    HijriPicker shaghlWazefaDate = HijriPicker(controller.shaghlWazefaDate);
    return BaseScreen(
        widget: SizedBox(
      height: currentHeight,
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CustomTextField(
                      controller: controller.jobNumber,
                      label: 'رقم الوظيفة',
                      customHeight: 25,
                      customWidth: 100),
                  CustomTextField(
                      controller: controller.jobBadlat,
                      label: 'بدلات الوظيفة',
                      customHeight: 25,
                      customWidth: 100),
                  CustomTextField(
                      controller: controller.salary,
                      label: 'الراتب',
                      customHeight: 25,
                      customWidth: 100),
                  CustomTextField(
                      controller: controller.badalNaqel,
                      label: 'بدل النقل',
                      customHeight: 25,
                      customWidth: 100),
                  CustomTextField(
                      controller: controller.alawahDawrea,
                      label: 'العلاوة الدورية',
                      customHeight: 25,
                      customWidth: 100),
                  CustomTextField(
                      controller: controller.badalIntedabDakhele,
                      label: 'بدل انتداب داخلي',
                      customHeight: 25,
                      customWidth: 100),
                  CustomTextField(
                      controller: controller.badalIntedabKhareje,
                      label: 'بدل انتداب خارجي',
                      customHeight: 25,
                      customWidth: 100),
                  CustomTextField(
                      controller: controller.jobData,
                      label: 'بيانات الوظيفة',
                      customHeight: 25,
                      customWidth: 100),
                  CustomButton(
                          text: 'اختر', onPressed: () {}, height: 25, width: 40)
                      .paddingOnly(top: 20),
                ],
              ).scrollDirection(Axis.horizontal),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomTextField(
                      controller: controller.employeeNumber,
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
                    onTap: () => shaghlWazefaDate.pickHijriDate(context),
                    controller: controller.shaghlWazefaDate,
                    label: "تاريخ شغل الوظيفة",
                    customHeight: 25,
                    customWidth: 150,
                  ),
                  CustomTextField(
                      onTap: () => {},
                      suffixIcon: Icon(
                        Icons.edit,
                        size: 15,
                      ),
                      controller: controller.updateEmployeeNumber,
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
                      controller: controller.ramzTasnifi,
                      customHeight: 25,
                      customWidth: 100),
                  CustomTextField(
                      controller: controller.part1,
                      label: 'القسم',
                      customHeight: 25,
                      customWidth: 100),
                  CustomTextField(
                      controller: controller.part2,
                      label: '',
                      customHeight: 25,
                      customWidth: 100),
                  CustomButton(
                          text: 'اختر', onPressed: () {}, height: 25, width: 40)
                      .paddingOnly(top: 20)
                ],
              ).scrollDirection(Axis.horizontal),
              Row(
                children: [
                  CustomTextField(
                      controller: controller.rank,
                      label: 'المرتبة',
                      customHeight: 25,
                      customWidth: 100),
                  CustomTextField(
                      controller: controller.employee,
                      label: 'اسم الموظف ',
                      customHeight: 25,
                      customWidth: 100),
                  CustomTextField(
                      controller: controller.recordNumber,
                      label: 'رقم السجل المدني/الإقامة',
                      customHeight: 25,
                      customWidth: 150),
                  CustomTextField(
                      controller: controller.makanAlsodor,
                      label: 'مكان الصدور',
                      customHeight: 25,
                      customWidth: 100),
                  CustomTextField(
                    suffixIcon: const Icon(
                      Icons.date_range_sharp,
                      size: 15,
                    ),
                    onTap: () => sodorDate.pickHijriDate(context),
                    controller: controller.sodorDate,
                    label: "تاريخ الصدور",
                    customHeight: 25,
                    customWidth: 100,
                  ),
                  CustomTextField(
                      controller: controller.degree1,
                      label: 'الدرجة',
                      customHeight: 25,
                      customWidth: 100),
                  CustomTextField(
                      controller: controller.degree2,
                      label: '',
                      customHeight: 25,
                      customWidth: 100),
                  CustomButton(
                          text: 'اختر', onPressed: () {}, height: 25, width: 40)
                      .paddingOnly(top: 20)
                ],
              ).scrollDirection(Axis.horizontal),
              Row(
                children: [
                  CustomTextField(
                      controller: controller.hafezahNumber,
                      label: 'رقم الحفيظة',
                      customHeight: 25,
                      customWidth: 100),
                  CustomTextField(
                      controller: controller.placeOfBirth,
                      label: ' مكان الميلاد',
                      customHeight: 25,
                      customWidth: 100),
                  CustomTextField(
                    suffixIcon: const Icon(
                      Icons.date_range_sharp,
                      size: 15,
                    ),
                    onTap: () => dateOfBirth.pickHijriDate(context),
                    controller: controller.dateOfBirth,
                    label: "تاريخ الميلاد",
                    customHeight: 25,
                    customWidth: 150,
                  ),
                  CustomTextField(
                    suffixIcon: const Icon(
                      Icons.date_range_sharp,
                      size: 15,
                    ),
                    onTap: () => serviceStartDate.pickHijriDate(context),
                    controller: controller.serviceStartDate,
                    label: "تاريخ بداية الخدمة",
                    customHeight: 25,
                    customWidth: 150,
                  ),
                  CustomTextField(
                      controller: controller.jobTitle1,
                      label: 'مسمى الوظيفة',
                      customHeight: 25,
                      customWidth: 100),
                  CustomTextField(
                      controller: controller.jobTitle2,
                      label: '',
                      customHeight: 25,
                      customWidth: 100),
                  CustomButton(
                          text: 'اختر', onPressed: () {}, height: 25, width: 40)
                      .paddingOnly(top: 20),
                ],
              ).scrollDirection(Axis.horizontal),
              Row(
                children: [
                  CustomTextField(
                      controller: controller.academicEducation,
                      label: 'اسم المؤهل العلمي',
                      customHeight: 25,
                      customWidth: 150),
                  CustomTextField(
                      controller: controller.scientificInstitution,
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
                      controller: controller.address,
                      label: 'العنوان',
                      customHeight: 25,
                      customWidth: 100),
                  CustomTextField(
                      controller: controller.phone,
                      label: 'الهاتف',
                      customHeight: 25,
                      customWidth: 100),
                  CustomTextField(
                      controller: controller.nationality1,
                      label: 'الجنسية',
                      customHeight: 25,
                      customWidth: 100),
                  CustomTextField(
                      controller: controller.nationality2,
                      label: '',
                      customHeight: 25,
                      customWidth: 100),
                  CustomButton(
                          text: 'اختر', onPressed: () {}, height: 25, width: 40)
                      .paddingOnly(top: 20)
                ],
              ).scrollDirection(Axis.horizontal),
              Row(
                children: [
                  CustomTextField(
                      controller: controller.assignedWork,
                      label: 'العمل المكلف به',
                      customHeight: 25,
                      customWidth: 100),
                  CustomTextField(
                    suffixIcon: const Icon(
                      Icons.date_range_sharp,
                      size: 15,
                    ),
                    onTap: () => loanStartDate.pickHijriDate(context),
                    controller: controller.loanStartDate,
                    label: "تاريخ بداية القرض",
                    customHeight: 25,
                    customWidth: 150,
                  ),
                  CustomTextField(
                    suffixIcon: const Icon(
                      Icons.date_range_sharp,
                      size: 15,
                    ),
                    onTap: () => loanEndDate.pickHijriDate(context),
                    controller: controller.loanEndDate,
                    label: "تاريخ نهاية القرض",
                    customHeight: 25,
                    customWidth: 150,
                  ),
                  CustomTextField(
                      controller: controller.amount,
                      label: 'المبلغ ',
                      customHeight: 25,
                      customWidth: 100),
                  CustomTextField(
                      controller: controller.installment,
                      label: 'القسط',
                      customHeight: 25,
                      customWidth: 100),
                  CustomTextField(
                      controller: controller.workCardNumber,
                      label: 'رقم بطاقة العمل',
                      customHeight: 25,
                      customWidth: 100),
                  CustomTextField(
                    suffixIcon: const Icon(
                      Icons.date_range_sharp,
                      size: 15,
                    ),
                    onTap: () => cardSodorDate.pickHijriDate(context),
                    controller: controller.cardSodorDate,
                    label: "تاريخ صدور البطاقة",
                    customHeight: 25,
                    customWidth: 150,
                  ),
                  CustomTextField(
                      controller: controller.takaoudMouad,
                      label: 'تقاعد معاد',
                      customHeight: 25,
                      customWidth: 100),
                ],
              ).scrollDirection(Axis.horizontal),
              Row(
                children: [
                  Container(
                    color: AppColors.greyLight,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('مسير الرواتب'),
                        CustomTextField(
                            controller: controller.harmOrInfection,
                            label: 'ضرر/عدوى',
                            customHeight: 25,
                            customWidth: 100),
                        CustomTextField(
                            controller: controller.other1,
                            label: 'أخرى',
                            customHeight: 25,
                            customWidth: 100),
                      ],
                    ).paddingAll(10),
                  ).paddingOnly(top: 10, right: 10),
                  Obx(
                    () => SizedBox(
                      width: 100,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomRadioListTile<String>(
                            value: "سعودي",
                            groupValue:
                                controller.nationalityRadoiListTileValue.value,
                            title: "سعودي",
                            onChanged: (value) {
                              controller
                                  .onChangeNationalityRadoiListTileValue(value);
                            },
                          ),
                          CustomRadioListTile<String>(
                            value: "أجنبي",
                            groupValue:
                                controller.nationalityRadoiListTileValue.value,
                            title: "أجنبي",
                            onChanged: (value) {
                              controller
                                  .onChangeNationalityRadoiListTileValue(value);
                            },
                          ),
                          CustomRadioListTile<String>(
                            value: "أجنبي",
                            groupValue:
                                controller.nationalityRadoiListTileValue.value,
                            title: "أجنبي",
                            onChanged: (value) {
                              controller
                                  .onChangeNationalityRadoiListTileValue(value);
                            },
                          ),
                        ],
                      ),
                    ).paddingAll(15),
                  ),
                  CustomTextField(
                      controller: controller.bankOfTasleef,
                      label: 'بنك التسليف',
                      customHeight: 25,
                      customWidth: 100),
                  CustomTextField(
                      controller: controller.contractNumberOfbankTasleef,
                      label: 'رقم العقد',
                      customHeight: 25,
                      customWidth: 100),
                  CustomTextField(
                      controller: controller.realEstateBank,
                      label: 'عقاري',
                      customHeight: 25,
                      customWidth: 100),
                  CustomTextField(
                      controller: controller.contractOfrealEstateBank,
                      label: 'رقم العقد',
                      customHeight: 25,
                      customWidth: 100),
                  CustomTextField(
                      controller: controller.agriculturalBank,
                      label: 'البنك الزراعي ',
                      customHeight: 25,
                      customWidth: 100),
                  CustomTextField(
                      controller: controller.healthInsurance,
                      label: 'التأمين الصحي',
                      customHeight: 25,
                      customWidth: 100),
                  CustomTextField(
                      controller: controller.other2,
                      label: 'أخرى',
                      customHeight: 25,
                      customWidth: 100),
                  Obx(
                    () => CustomCheckbox(
                      label: 'ساند',
                      value: controller.saned.value,
                      onChanged: (value) {
                        controller.onChangeSaned();
                      },
                    ),
                  ).paddingOnly(top: 20),
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
          ).paddingAll(10).scrollDirection(Axis.vertical),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  CustomButton(
                      text: 'طباعة كارت تعريفي',
                      onPressed: () {},
                      height: 30,
                      width: 120),
                  CustomButton(
                      text: 'موظف جديد',
                      onPressed: () {},
                      height: 30,
                      width: 120),
                ],
              ),
              Row(
                children: [
                  CustomButton(
                    text: 'مشهد بالراتب',
                    height: 30,
                    width: 120,
                    onPressed: () {},
                  ),
                  CustomButton(
                      text: 'شهادة تعريف',
                      onPressed: () {},
                      height: 30,
                      width: 120),
                ],
              ),
              Row(
                children: [
                  CustomButton(
                      text: 'بيان خدمات موظف',
                      onPressed: () {},
                      height: 30,
                      width: 120),
                  CustomButton(
                      text: 'طباعة مكافئة عن الاجازات',
                      onPressed: () {},
                      height: 30,
                      width: 120),
                ],
              ),
              Row(
                children: [
                  CustomButton(
                      text: 'طباعة قرار طي القيد ',
                      onPressed: () {},
                      height: 30,
                      width: 120),
                ],
              ),
              CustomTextField(
                  label: 'تاريخ خطاب التعريف',
                  customHeight: 25,
                  customWidth: 120),
              Row(
                children: [
                  CustomTextField(
                      label: 'جهة خطاب التعريف',
                      customHeight: 25,
                      customWidth: 120),
                  Obx(
                    () => CustomCheckbox(
                      label: 'صورة',
                      value: controller.isPicture.value,
                      onChanged: (value) {
                        controller.onChangeIsPicture();
                      },
                    ).paddingOnly(top: 20),
                  ),
                ],
              ),
              Obx(() {
                return Container(
                  width: currentHeight * 0.2,
                  height: currentHeight * 0.2,
                  decoration: BoxDecoration(
                    color: AppColors.grey,
                    borderRadius: BorderRadius.circular(10),
                    image: controller.employeePhoto.value.isNotEmpty
                        ? DecorationImage(
                            image: NetworkImage(controller.employeePhoto.value),
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
            ],
          ),
        ],
      ).scrollDirection(Axis.horizontal),

      //////
    ));
  }
}
