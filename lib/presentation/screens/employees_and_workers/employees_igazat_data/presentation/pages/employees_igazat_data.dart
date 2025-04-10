import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:municipality/core/extensions/widget_extension.dart';
import 'package:municipality/core/functions/hijri_picker.dart';
import 'package:municipality/presentation/screens/base_screen.dart';
import 'package:municipality/presentation/screens/employees_and_workers/employees_hasem/presentation/controllers/employees_hasem_controller.dart';
import 'package:municipality/presentation/screens/employees_and_workers/employees_igazat_data/presentation/controllers/employees_igazat_data_controller.dart';
import 'package:municipality/presentation/widgets/custom_button.dart';
import 'package:municipality/presentation/widgets/custom_check_box.dart';
import 'package:municipality/presentation/widgets/custom_dropdown_button.dart';
import 'package:municipality/presentation/widgets/custom_radio_list_tile.dart';
import 'package:municipality/presentation/widgets/custom_text_feild.dart';
import 'package:pluto_grid/pluto_grid.dart';

class EmployeesIgazatData extends StatelessWidget {
  const EmployeesIgazatData({super.key});

  @override
  Widget build(BuildContext context) {
    EmployeesIgazatDataController controller =
        Get.put(EmployeesIgazatDataController());
    double currentWidth = Get.width;
    double currentHeight = Get.height;

    HijriPicker decisionDate = HijriPicker(controller.decisionDate);
    HijriPicker igazahRequestDate = HijriPicker(controller.igazahRequestDate);
    HijriPicker igazahStartDate = HijriPicker(controller.igazahStartDate);
    HijriPicker igazahEndDate = HijriPicker(controller.igazahEndDate);
    HijriPicker istehqaqEndDate = HijriPicker(controller.istehqaqEndDate);
    HijriPicker istehqaqDate = HijriPicker(controller.istehqaqDate);
    HijriPicker istehqaqStartDate = HijriPicker(controller.istehqaqStartDate);
    HijriPicker dayDate = HijriPicker(controller.dayDate);
    HijriPicker medicalReportDate = HijriPicker(controller.medicalReportDate);
    HijriPicker serviceStartDate = HijriPicker(controller.serviceStartDate);

    return Scaffold(
      body: BaseScreen(
        widget: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CustomTextField(
                    controller: controller.mosalsal,
                    label: 'مسلسل',
                    customHeight: 25,
                    customWidth: currentWidth * 0.15,
                  ),
                  CustomTextField(
                    controller: controller.directManager,
                    label: 'الرئيس المباشر',
                    customHeight: 25,
                    customWidth: currentWidth * 0.15,
                  ),
                  CustomTextField(
                    suffixIcon: Icon(
                      Icons.date_range_sharp,
                      size: 15,
                    ),
                    controller: controller.decisionDate,
                    onTap: () => decisionDate.pickHijriDate(context),
                    label: 'تاريخ القرار',
                    customHeight: 25,
                    customWidth: currentWidth * 0.15,
                  ),
                  CustomTextField(
                    controller: controller.decisionNumber,
                    label: 'رقم القرار',
                    customHeight: 25,
                    customWidth: currentWidth * 0.15,
                  ),
                  CustomTextField(
                    controller: controller.employee1,
                    label: 'الموظف',
                    customHeight: 25,
                    customWidth: currentWidth * 0.07,
                  ),
                  CustomTextField(
                    controller: controller.employee2,
                    label: '',
                    customHeight: 25,
                    customWidth: currentWidth * 0.15,
                  ),
                  CustomButton(
                          text: 'اختر', onPressed: () {}, height: 25, width: 75)
                      .paddingOnly(top: 15)
                ],
              ).scrollDirection(Axis.horizontal),
              Row(
                children: [
                  CustomTextField(
                    controller: controller.rank,
                    label: 'المرتبة',
                    customHeight: 25,
                    customWidth: currentWidth * 0.15,
                  ),
                  CustomTextField(
                    controller: controller.degree,
                    label: 'الدرجة',
                    customHeight: 25,
                    customWidth: currentWidth * 0.15,
                  ),
                  CustomTextField(
                    controller: controller.salary,
                    label: 'الراتب',
                    customHeight: 25,
                    customWidth: currentWidth * 0.15,
                  ),
                  CustomTextField(
                    controller: controller.badalNaqel,
                    label: 'بدل النقل',
                    customHeight: 25,
                    customWidth: currentWidth * 0.15,
                  ),
                  CustomTextField(
                    controller: controller.igazahType1,
                    label: 'نوع الإجازة',
                    customHeight: 25,
                    customWidth: currentWidth * 0.07,
                  ),
                  CustomTextField(
                    controller: controller.igazahType2,
                    label: '',
                    customHeight: 25,
                    customWidth: currentWidth * 0.15,
                  ),
                  CustomButton(
                          text: 'اختر', onPressed: () {}, height: 25, width: 75)
                      .paddingOnly(top: 15)
                ],
              ).scrollDirection(Axis.horizontal),
              Row(
                children: [
                  CustomTextField(
                    suffixIcon: Icon(
                      Icons.date_range_sharp,
                      size: 15,
                    ),
                    controller: controller.igazahRequestDate,
                    onTap: () => igazahRequestDate.pickHijriDate(context),
                    label: 'تاريخ طلب الإجازة',
                    customHeight: 25,
                    customWidth: currentWidth * 0.15,
                  ),
                  CustomTextField(
                    suffixIcon: Icon(
                      Icons.date_range_sharp,
                      size: 15,
                    ),
                    controller: controller.igazahStartDate,
                    onTap: () => igazahStartDate.pickHijriDate(context),
                    label: 'تاريخ بداية الإجازة',
                    customHeight: 25,
                    customWidth: currentWidth * 0.15,
                  ),
                  CustomTextField(
                    suffixIcon: const Icon(
                      Icons.date_range_sharp,
                      size: 15,
                    ),
                    onTap: () => igazahEndDate.pickHijriDate(context),
                    controller: controller.igazahEndDate,
                    label: 'تاريخ نهاية الإجازة',
                    customHeight: 25,
                    customWidth: currentWidth * 0.15,
                  ),
                  CustomTextField(
                    controller: controller.titleDuringIgazah,
                    label: 'العنوان أثناء الإجازة',
                    customHeight: 25,
                    customWidth: currentWidth * 0.15,
                  ),
                  CustomTextField(
                    controller: controller.directManager,
                    label: 'الرئيس المباشر',
                    customHeight: 25,
                    customWidth: currentWidth * 0.15,
                  ),
                  CustomTextField(
                    controller: controller.managerJob,
                    label: 'وظيفته',
                    customHeight: 25,
                    customWidth: currentWidth * 0.15,
                  ),
                ],
              ).scrollDirection(Axis.horizontal),
              Row(
                children: [
                  CustomDropdownButton(
                      width: currentWidth * 0.2,
                      height: 25,
                      label: 'صرف راتب الإجازة',
                      list: controller.sarfRatebIgazat,
                      item: controller.sarfRatebIgazah,
                      onChanged: (value) {
                        controller.onChangeSarfRatebIgazah(
                            controller.sarfRatebIgazah.value);
                      }),
                  CustomTextField(
                    controller: controller.igazahDuration,
                    label: 'مدة الإجازة',
                    customHeight: 25,
                    customWidth: currentWidth * 0.15,
                  ),
                  CustomTextField(
                    suffixIcon: const Icon(
                      Icons.date_range_sharp,
                      size: 15,
                    ),
                    onTap: () => istehqaqStartDate.pickHijriDate(context),
                    controller: controller.istehqaqStartDate,
                    label: 'تاريخ بداية الاستحقاق',
                    customHeight: 25,
                    customWidth: currentWidth * 0.15,
                  ),
                  CustomTextField(
                    suffixIcon: Icon(
                      Icons.date_range_sharp,
                      size: 15,
                    ),
                    onTap: () => istehqaqStartDate.pickHijriDate(context),
                    controller: controller.istehqaqStartDate,
                    label: 'تاريخ نهاية الاستحقاق',
                    customHeight: 25,
                    customWidth: currentWidth * 0.15,
                  ),
                  CustomTextField(
                    controller: controller.getWork,
                    label: 'يؤمن عمله',
                    customHeight: 25,
                    customWidth: currentWidth * 0.15,
                  ),
                  CustomTextField(
                    controller: controller.fileNumber,
                    label: 'رقم الملف',
                    customHeight: 25,
                    customWidth: currentWidth * 0.15,
                  ),
                ],
              ).scrollDirection(Axis.horizontal),
              Row(
                children: [
                  CustomTextField(
                    controller: controller.meeting,
                    label: 'لقاء',
                    customHeight: 25,
                    customWidth: currentWidth * 0.15,
                  ),
                  CustomTextField(
                    controller: controller.meeting,
                    label: 'رقم التقرير الطبي',
                    customHeight: 25,
                    customWidth: currentWidth * 0.15,
                  ),
                  CustomTextField(
                    suffixIcon: Icon(
                      Icons.date_range_sharp,
                      size: 15,
                    ),
                    controller: controller.medicalReportDate,
                    onTap: () => medicalReportDate.pickHijriDate(context),
                    label: 'تاريخه',
                    customHeight: 25,
                    customWidth: currentWidth * 0.15,
                  ),
                  CustomTextField(
                    controller: controller.hospitalOfMedicalReport,
                    label: 'اسم المستشفى',
                    customHeight: 25,
                    customWidth: currentWidth * 0.15,
                  ),
                  Obx(() => Row(
                            children: [
                              CustomCheckbox(
                                label: "تم الاعتماد",
                                value: controller.done.value,
                                onChanged: (value) {
                                  controller.onChangeDone();
                                },
                              ),
                              CustomCheckbox(
                                label: "إلغاء الإجازة",
                                value: controller.cancel.value,
                                onChanged: (value) {
                                  controller.onChangeCancel();
                                },
                              ),
                            ],
                          ))
                      .paddingOnly(right: 10, top: 20)
                      .scrollDirection(Axis.horizontal),
                ],
              ).scrollDirection(Axis.horizontal),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(' رصيد الإجازات القديم :   '),
                          Text('رصيد كلي :   .............................'),
                          Text('متمتع : ...................'),
                          Text('باقي : ...................'),
                        ],
                      ).paddingAll(10).scrollDirection(Axis.horizontal),
                      Row(
                        children: [
                          Text(' رصيد الإجازات القديم :   '),
                          Text('رصيد كلي :   .............................'),
                          Text('متمتع : ...................'),
                          Text('باقي : ...................'),
                        ],
                      ).paddingAll(10).scrollDirection(Axis.horizontal),
                      Row(
                        children: [
                          Text(' رصيد الإجازات القديم :   '),
                          Text('رصيد كلي :   .............................'),
                          Text('متمتع : ...................'),
                          Text('باقي : ...................'),
                        ],
                      ).paddingAll(10).scrollDirection(Axis.horizontal),
                    ],
                  ),
                  Column(
                    children: [
                      CustomTextField(
                        suffixIcon: Icon(
                          Icons.date_range_sharp,
                          size: 15,
                        ),
                        controller: controller.dayDate,
                        onTap: () => dayDate.pickHijriDate(context),
                        label: 'تاريخ اليوم',
                        customHeight: 20,
                        customWidth: currentWidth * 0.2,
                      ),
                      CustomTextField(
                        suffixIcon: Icon(
                          Icons.date_range_sharp,
                          size: 15,
                        ),
                        controller: controller.serviceStartDate,
                        onTap: () => serviceStartDate.pickHijriDate(context),
                        label: 'تاريخ بداية الخدمة',
                        customHeight: 20,
                        customWidth: currentWidth * 0.2,
                      ),
                      CustomTextField(
                        controller: controller.administration,
                        label: 'الإدارة',
                        customHeight: 20,
                        customWidth: currentWidth * 0.2,
                      ),
                      CustomTextField(
                        controller: controller.notesForPrint,
                        label: 'ملاحظات للطباعة ',
                        customHeight: 40,
                        customWidth: currentWidth * 0.2,
                      ),
                    ],
                  ),
                  Obx(
                    () => Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomCheckbox(
                          label: "صورة",
                          value: controller.isPicture.value,
                          onChanged: (value) {
                            controller.onChangPicture();
                          },
                        ).paddingAll(2),
                        CustomCheckbox(
                          label: "ندب",
                          value: controller.nadeb.value,
                          onChanged: (value) {
                            controller.onChangNadeb();
                          },
                        ).paddingAll(2),
                        CustomCheckbox(
                          label: "الإجازة مستحقة رسميا",
                          value: controller.igazahMostahaqah.value,
                          onChanged: (value) {
                            controller.onChangeIgazahMostahaqah();
                          },
                        ).paddingAll(2),
                        CustomCheckbox(
                          label: "موافقة الرئيس المباشر",
                          value: controller.directManagerAccept.value,
                          onChanged: (value) {
                            controller.onChangeManagerAccept();
                          },
                        ).paddingAll(2),
                        CustomCheckbox(
                          label: "موافقة تمديد الإجازة",
                          value: controller.tamdeedIgazahAccept.value,
                          onChanged: (value) {
                            controller.onChangeTamdeedIgazahAccept();
                          },
                        ).paddingAll(2)
                      ],
                    ),
                  ),
                ],
              ).scrollDirection(Axis.horizontal),
              Row(
                children: [
                  CustomButton(
                    text: "إضافة جديد",
                    onPressed: () {},
                    height: 35,
                    width: 120,
                  ),
                  CustomButton(
                    text: " قرار إجازة",
                    onPressed: () {},
                    height: 35,
                    width: 120,
                  ),
                  CustomButton(
                    text: "طلب إجازة",
                    onPressed: () {},
                    height: 35,
                    width: 150,
                  ),
                  CustomButton(
                    text: "طباعة مسير",
                    onPressed: () {},
                    height: 35,
                    width: 120,
                  ),
                  CustomButton(
                    text: "حفظ",
                    onPressed: () {},
                    height: 35,
                    width: 120,
                  ),
                ],
              ).scrollDirection(Axis.horizontal).center(),
            ]).scrollDirection(Axis.vertical).paddingAll(15),
      ),
    );
  }
}
