import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:municipality/core/extensions/widget_extension.dart';
import 'package:municipality/core/functions/hijri_picker.dart';
import 'package:municipality/presentation/screens/base_screen.dart';
import 'package:municipality/presentation/screens/employees_and_workers/employees_hasem/presentation/controllers/employees_hasem_controller.dart';
import 'package:municipality/presentation/screens/employees_and_workers/employees_igazat_data/presentation/controllers/employees_igazat_data_controller.dart';
import 'package:municipality/presentation/screens/employees_and_workers/employees_tarkeah_employee/presentation/controllers/epmployees_tarkeah_employee_controller.dart';
import 'package:municipality/presentation/widgets/custom_button.dart';
import 'package:municipality/presentation/widgets/custom_check_box.dart';
import 'package:municipality/presentation/widgets/custom_dropdown_button.dart';
import 'package:municipality/presentation/widgets/custom_radio_list_tile.dart';
import 'package:municipality/presentation/widgets/custom_text_feild.dart';
import 'package:pluto_grid/pluto_grid.dart';

import '../../../../../../core/constants/app_colors.dart';

class EmployeesTarkeahEmployee extends StatelessWidget {
  const EmployeesTarkeahEmployee({super.key});

  @override
  Widget build(BuildContext context) {
    EmployeesTarkeahEmployeeController controller =
        Get.put(EmployeesTarkeahEmployeeController());
    double currentWidth = Get.width;
    double currentHeight = Get.height;

    HijriPicker decisionDate = HijriPicker(controller.decisionDate);
    HijriPicker litterDate = HijriPicker(controller.litterDate);
    HijriPicker authenticationDate = HijriPicker(controller.authenticationDate);
    HijriPicker mahdarDate = HijriPicker(controller.mahdarDate);
    HijriPicker mobasharahDate = HijriPicker(controller.mobasharahDate);
    HijriPicker mobasharahLitterDate =
        HijriPicker(controller.mobasharahLitterDate);

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
                    controller: controller.decisionNumber,
                    label: 'رقم القرار',
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
                    label: 'رقم الخطاب',
                    customHeight: 25,
                    customWidth: currentWidth * 0.15,
                  ),
                  CustomTextField(
                    suffixIcon: Icon(
                      Icons.date_range_sharp,
                      size: 15,
                    ),
                    onTap: () => litterDate.pickHijriDate(context),
                    controller: controller.litterDate,
                    label: 'تاريخ الخطاب',
                    customHeight: 25,
                    customWidth: currentWidth * 0.15,
                  ),
                ],
              ).scrollDirection(Axis.horizontal),
              Row(
                children: [
                  CustomTextField(
                    controller: controller.authenticationNumber,
                    label: 'رقم المصادقة',
                    customHeight: 25,
                    customWidth: currentWidth * 0.15,
                  ),
                  CustomTextField(
                    suffixIcon: Icon(
                      Icons.date_range_sharp,
                      size: 15,
                    ),
                    onTap: () => authenticationDate.pickHijriDate(context),
                    controller: controller.authenticationDate,
                    label: 'تاريخ المصادقة',
                    customHeight: 25,
                    customWidth: currentWidth * 0.15,
                  ),
                  CustomTextField(
                    controller: controller.mahdarNumber,
                    label: 'رقم المحضر',
                    customHeight: 25,
                    customWidth: currentWidth * 0.15,
                  ),
                  CustomTextField(
                    suffixIcon: Icon(
                      Icons.date_range_sharp,
                      size: 15,
                    ),
                    onTap: () => mahdarDate.pickHijriDate(context),
                    controller: controller.mahdarDate,
                    label: 'تاريخ المحضر',
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
                  CustomDropdownButton(
                      width: currentWidth * 0.2,
                      height: 25,
                      label: 'يوم المباشرة',
                      list: controller.mobasharahDays,
                      item: controller.mobasharahDay,
                      onChanged: (value) {
                        controller.onChangeMobasharahDay(
                            controller.mobasharahDay.value);
                      }),
                  CustomTextField(
                    suffixIcon: const Icon(
                      Icons.date_range_sharp,
                      size: 15,
                    ),
                    onTap: () => mobasharahDate.pickHijriDate(context),
                    controller: controller.mobasharahDate,
                    label: 'تاريخ المباشرة ',
                    customHeight: 25,
                    customWidth: currentWidth * 0.15,
                  ),
                  CustomTextField(
                    controller: controller.precentOfNatureWork,
                    label: 'النسبة المئوية لطبيعة العمل',
                    customHeight: 25,
                    customWidth: currentWidth * 0.15,
                  ),
                  CustomTextField(
                    controller: controller.mobasharahLitterNumber,
                    label: 'رقم خطاب المباشرة',
                    customHeight: 25,
                    customWidth: currentWidth * 0.07,
                  ),
                  CustomTextField(
                    suffixIcon: Icon(
                      Icons.date_range_sharp,
                      size: 15,
                    ),
                    onTap: () => mobasharahLitterDate.pickHijriDate(context),
                    controller: controller.mobasharahLitterDate,
                    label: 'تاريخ خطاب المباشرة',
                    customHeight: 25,
                    customWidth: currentWidth * 0.15,
                  ),
                  Obx(
                    () => CustomCheckbox(
                      label: "صورة",
                      value: controller.isPicture.value,
                      onChanged: (value) {
                        controller.onChangedPicture();
                      },
                    ).paddingOnly(top: 20),
                  )
                ],
              ).scrollDirection(Axis.horizontal),
              Row(
                children: [
                  Container(
                    color: AppColors.greyLight,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('الوظيفة التي يشغلها : '),
                        Row(
                          children: [
                            CustomTextField(
                              controller: controller.jobTitle1F1,
                              label: 'المسمى الوظيفي',
                              customHeight: 25,
                              customWidth: currentWidth * 0.07,
                            ),
                            CustomTextField(
                              controller: controller.jobTitle1F2,
                              label: '',
                              customHeight: 25,
                              customWidth: currentWidth * 0.15,
                            ),
                            CustomButton(
                                    text: 'اختر',
                                    onPressed: () {},
                                    height: 25,
                                    width: 50)
                                .paddingOnly(top: 20),
                          ],
                        ),
                        Row(
                          children: [
                            CustomTextField(
                              controller: controller.number1F1,
                              label: 'القسم',
                              customHeight: 25,
                              customWidth: currentWidth * 0.07,
                            ),
                            CustomTextField(
                              controller: controller.number1F2,
                              label: '',
                              customHeight: 25,
                              customWidth: currentWidth * 0.15,
                            ),
                            CustomButton(
                                    text: 'اختر',
                                    onPressed: () {},
                                    height: 25,
                                    width: 50)
                                .paddingOnly(top: 20),
                          ],
                        ),
                        Row(
                          children: [
                            CustomTextField(
                              controller: controller.number1F1,
                              label: 'الرقم',
                              customHeight: 25,
                              customWidth: currentWidth * 0.07,
                            ),
                            CustomTextField(
                              controller: controller.number1F2,
                              label: '',
                              customHeight: 25,
                              customWidth: currentWidth * 0.15,
                            ),
                            CustomButton(
                                    text: 'اختر',
                                    onPressed: () {},
                                    height: 25,
                                    width: 50)
                                .paddingOnly(top: 20),
                          ],
                        ),
                        Row(
                          children: [
                            CustomTextField(
                              controller: controller.salary1,
                              label: 'الراتب',
                              customHeight: 25,
                              customWidth: currentWidth * 0.1,
                            ),
                            CustomTextField(
                              controller: controller.badalNaqel1,
                              label: 'بدل النقل',
                              customHeight: 25,
                              customWidth: currentWidth * 0.1,
                            ),
                            CustomTextField(
                              controller: controller.rank1,
                              label: 'المرتبة',
                              customHeight: 25,
                              customWidth: currentWidth * 0.1,
                            ),
                            CustomTextField(
                              controller: controller.natureOfWork1,
                              label: 'طبيعة العمل',
                              customHeight: 25,
                              customWidth: currentWidth * 0.1,
                            ),
                          ],
                        ),
                      ],
                    ).marginAll(10),
                  ),
                  ////////
                  Container(
                    color: AppColors.greyLight,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('الوظيفة  المرقّى إليها : '),
                        Row(
                          children: [
                            CustomTextField(
                              controller: controller.jobTitle2F1,
                              label: 'المسمى الوظيفي',
                              customHeight: 25,
                              customWidth: currentWidth * 0.07,
                            ),
                            CustomTextField(
                              controller: controller.jobTitle2F2,
                              label: '',
                              customHeight: 25,
                              customWidth: currentWidth * 0.15,
                            ),
                            CustomButton(
                                    text: 'اختر',
                                    onPressed: () {},
                                    height: 25,
                                    width: 50)
                                .paddingOnly(top: 20),
                          ],
                        ),
                        Row(
                          children: [
                            CustomTextField(
                              controller: controller.number2F1,
                              label: 'القسم',
                              customHeight: 25,
                              customWidth: currentWidth * 0.07,
                            ),
                            CustomTextField(
                              controller: controller.number2F2,
                              label: '',
                              customHeight: 25,
                              customWidth: currentWidth * 0.15,
                            ),
                            CustomButton(
                                    text: 'اختر',
                                    onPressed: () {},
                                    height: 25,
                                    width: 50)
                                .paddingOnly(top: 20),
                          ],
                        ),
                        Row(
                          children: [
                            CustomTextField(
                              controller: controller.number2F1,
                              label: 'الرقم',
                              customHeight: 25,
                              customWidth: currentWidth * 0.07,
                            ),
                            CustomTextField(
                              controller: controller.number2F2,
                              label: '',
                              customHeight: 25,
                              customWidth: currentWidth * 0.15,
                            ),
                            CustomButton(
                                    text: 'اختر',
                                    onPressed: () {},
                                    height: 25,
                                    width: 50)
                                .paddingOnly(top: 20),
                          ],
                        ),
                        Row(
                          children: [
                            CustomTextField(
                              controller: controller.salary2,
                              label: 'الراتب',
                              customHeight: 25,
                              customWidth: currentWidth * 0.1,
                            ),
                            CustomTextField(
                              controller: controller.badalNaqel2,
                              label: 'بدل النقل',
                              customHeight: 25,
                              customWidth: currentWidth * 0.1,
                            ),
                            CustomTextField(
                              controller: controller.rank2,
                              label: 'المرتبة',
                              customHeight: 25,
                              customWidth: currentWidth * 0.1,
                            ),
                            CustomTextField(
                              controller: controller.natureOfWork2,
                              label: 'طبيعة العمل',
                              customHeight: 25,
                              customWidth: currentWidth * 0.1,
                            ),
                          ],
                        ),
                      ],
                    ).marginAll(10),
                  ).marginOnly(right: 10)
                ],
              ).scrollDirection(Axis.horizontal),
              Row(
                children: [
                  CustomButton(
                    text: "ترقية جديدة",
                    onPressed: () {},
                    height: 35,
                    width: 120,
                  ),
                  CustomButton(
                    text: "طباعة قرار ترقية",
                    onPressed: () {},
                    height: 35,
                    width: 150,
                  ),
                  CustomButton(
                    text: "طباعة قرار ترقية بنسبة طباعة عمل",
                    onPressed: () {},
                    height: 35,
                    width: 200,
                  ),
                  CustomButton(
                    text: "طباعة مباشرة",
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
