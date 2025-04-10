import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:municipality/core/extensions/widget_extension.dart';
import 'package:municipality/core/functions/hijri_picker.dart';
import 'package:municipality/presentation/screens/base_screen.dart';
import 'package:municipality/presentation/screens/employees_and_workers/employees_hasem/presentation/controllers/employees_hasem_controller.dart';
import 'package:municipality/presentation/widgets/custom_button.dart';
import 'package:municipality/presentation/widgets/custom_check_box.dart';
import 'package:municipality/presentation/widgets/custom_dropdown_button.dart';
import 'package:municipality/presentation/widgets/custom_radio_list_tile.dart';
import 'package:municipality/presentation/widgets/custom_text_feild.dart';
import 'package:pluto_grid/pluto_grid.dart';

import '../controllers/employees_intedab_controller.dart';

class EmployeesIntedab extends StatelessWidget {
  const EmployeesIntedab({super.key});

  @override
  Widget build(BuildContext context) {
    EmployeesIntedabController controller =
        Get.put(EmployeesIntedabController());
    double currentWidth = Get.width;
    double currentHeight = Get.height;

    HijriPicker hijriDecisionDate =
        HijriPicker(controller.hijriDecisionDate, controller.geoDecisionDate);
    HijriPicker hijriEndIntedabDate = HijriPicker(
        controller.hijriEndIntedabDate, controller.geoEndIntedabDate);
    HijriPicker hijriLitterDate =
        HijriPicker(controller.hijriLitterDate, controller.geoLitterDate);
    HijriPicker hijriStartIntedabDate = HijriPicker(
        controller.hijriStartIntedabDate, controller.geoStartIntedabDate);

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
                    customWidth: currentWidth * 0.2,
                  ),
                  CustomTextField(
                    controller: controller.decisionNumber,
                    label: 'رقم القرار',
                    customHeight: 25,
                    customWidth: currentWidth * 0.2,
                  ),
                  CustomTextField(
                    controller: controller.intedabDuration,
                    label: 'مدة الانتداب',
                    customHeight: 25,
                    customWidth: currentWidth * 0.2,
                  ),
                  CustomTextField(
                    controller: controller.intedabAuthority,
                    label: 'جهة الانتداب',
                    customHeight: 25,
                    customWidth: currentWidth * 0.2,
                  ),
                ],
              ).scrollDirection(Axis.horizontal),
              Row(
                children: [
                  CustomTextField(
                    controller: controller.mission,
                    label: 'المهمة',
                    customHeight: 25,
                    customWidth: currentWidth * 0.2,
                  ),
                  CustomTextField(
                    controller: controller.litterNumber,
                    label: 'رقم الخطاب',
                    customHeight: 25,
                    customWidth: currentWidth * 0.2,
                  ),
                  CustomTextField(
                    controller: controller.travelDistance,
                    label: 'مسافة السفر',
                    customHeight: 25,
                    customWidth: currentWidth * 0.2,
                  ),
                  Obx(
                    () => CustomCheckbox(
                      label: "صورة",
                      value: controller.isPicture.value,
                      onChanged: (value) {
                        controller.onChangedPicture();
                      },
                    ).paddingOnly(top: 20),
                  ),
                ],
              ).scrollDirection(Axis.horizontal),
              Row(
                children: [
                  Column(
                    children: [
                      CustomTextField(
                        suffixIcon: const Icon(
                          Icons.date_range_sharp,
                          size: 15,
                        ),
                        onTap: () => hijriDecisionDate.pickHijriDate(context),
                        controller: controller.hijriDecisionDate,
                        label: 'تاريخ القرار',
                        customHeight: 25,
                        customWidth: currentWidth * 0.2,
                      ),
                      CustomTextField(
                        controller: controller.geoDecisionDate,
                        label: '',
                        customHeight: 25,
                        customWidth: currentWidth * 0.2,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      CustomTextField(
                        suffixIcon: const Icon(
                          Icons.date_range_sharp,
                          size: 15,
                        ),
                        onTap: () =>
                            hijriStartIntedabDate.pickHijriDate(context),
                        controller: controller.hijriStartIntedabDate,
                        label: 'تاريخ بداية الانتداب',
                        customHeight: 25,
                        customWidth: currentWidth * 0.2,
                      ),
                      CustomTextField(
                        controller: controller.geoStartIntedabDate,
                        label: '',
                        customHeight: 25,
                        customWidth: currentWidth * 0.2,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      CustomTextField(
                        suffixIcon: const Icon(
                          Icons.date_range_sharp,
                          size: 15,
                        ),
                        onTap: () => hijriEndIntedabDate.pickHijriDate(context),
                        controller: controller.hijriEndIntedabDate,
                        label: 'تاريخ نهاية الانتداب',
                        customHeight: 25,
                        customWidth: currentWidth * 0.2,
                      ),
                      CustomTextField(
                        controller: controller.geoEndIntedabDate,
                        label: '',
                        customHeight: 25,
                        customWidth: currentWidth * 0.2,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      CustomTextField(
                        suffixIcon: const Icon(
                          Icons.date_range_sharp,
                          size: 15,
                        ),
                        onTap: () => hijriLitterDate.pickHijriDate(context),
                        controller: controller.hijriLitterDate,
                        label: 'تاريخ الخطاب',
                        customHeight: 25,
                        customWidth: currentWidth * 0.2,
                      ),
                      CustomTextField(
                        label: '',
                        controller: controller.geoLitterDate,
                        customHeight: 25,
                        customWidth: currentWidth * 0.2,
                      ),
                    ],
                  )
                ],
              ).scrollDirection(Axis.horizontal),
              Row(
                children: [
                  CustomTextField(
                    controller: controller.ticketPrice,
                    label: 'قيمة التذكرة',
                    customHeight: 35,
                    customWidth: currentWidth * 0.15,
                  ),
                  CustomDropdownButton(
                      label: 'وسيلة السفر',
                      list: controller.vehicles,
                      item: controller.howToTravel,
                      onChanged: (value) {
                        controller.onChangeType(controller.type.value);
                      }),
                  CustomDropdownButton(
                      label: 'النوع',
                      list: controller.types,
                      item: controller.type,
                      onChanged: (value) {
                        controller.onChangeType(controller.type.value);
                      }),
                  CustomDropdownButton(
                      label: 'اليوم',
                      list: controller.days,
                      item: controller.day,
                      onChanged: (value) {
                        controller.onChangeDay(controller.day.value);
                      }),
                ],
              ).scrollDirection(Axis.horizontal),
              Row(
                children: [
                  CustomDropdownButton(
                      label: 'الفئة',
                      list: controller.categories,
                      item: controller.category,
                      onChanged: (value) {
                        controller.onChangeCategory(controller.category.value);
                      }),
                  CustomTextField(
                    controller: controller.categoryAmount,
                    label: 'مبلغ الفئة',
                    customHeight: 35,
                    customWidth: currentWidth * 0.2,
                  ),
                ],
              ).scrollDirection(Axis.horizontal),
              Row(
                children: [
                  Obx(
                    () => Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomCheckbox(
                          label: 'هل تم تأمين وسيلة السفر',
                          value: controller.travelVehicleTameen.value,
                          onChanged: (value) {
                            controller.onChangerTavelVehicleTameen();
                          },
                        ),
                        CustomCheckbox(
                          label:
                              'هل استعملت سيارة حكومية من الجهة المنتدب منها أو الجهة المنتدب إليها للتنقلات الداخلية',
                          value: controller.usingCar.value,
                          onChanged: (value) {
                            controller.onChangeUsingCar();
                          },
                        ),
                        CustomCheckbox(
                          label: 'هل تم تكليفك بالعمل خارج فترة الدوام',
                          value: controller.workOutDawam.value,
                          onChanged: (value) {
                            controller.onChangeWorkOutDawam();
                          },
                        ),
                        CustomCheckbox(
                          label: 'هل تم تأمين السكن أو الطعام أو أحدهما',
                          value: controller.housingOrFood.value,
                          onChanged: (value) {
                            controller.onChangeHousingOrFood();
                          },
                        ),
                        CustomCheckbox(
                          label:
                              'هل سبق أن صرف سلفة نقدية على حساب المصاريف السفرية و ما مقدارها',
                          value: controller.solfahNaqdeah.value,
                          onChanged: (value) {
                            controller.onChangeSolfahNaqdeah();
                          },
                        )
                      ],
                    ).scrollDirection(Axis.vertical),
                  ),
                  Obx(
                    () => Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomRadioListTile(
                          groupValue: controller.badalNaqel.value,
                          value:
                              ' يصرف له يوميا بدل نقل إضافي 1/ 30 من بدل نقله الشهري',
                          title:
                              ' يصرف له يوميا بدل نقل إضافي 1/ 30 من بدل نقله الشهري',
                          onChanged: (value) {
                            controller.updateBadalNaqel(value);
                          },
                        ),
                        CustomRadioListTile(
                            groupValue: controller.badalNaqel.value,
                            value:
                                ' لا يصرف له يوميا بدل نقل إضافي 1/ 30 من بدل نقله الشهري',
                            onChanged: (value) {
                              controller.updateBadalNaqel(value);
                            },
                            title:
                                ' لا يصرف له يوميا بدل نقل إضافي 1/ 30 من بدل نقله الشهري'),
                        CustomRadioListTile(
                            value:
                                'يصرف للمذكور مبلغًا تعويضًا عن تذاكر إركابه',
                            onChanged: (value) {
                              controller.updateMablaghTaweedy(value);
                            },
                            groupValue: controller.mablaghTaweedy,
                            title:
                                'يصرف للمذكور مبلغًا تعويضًا عن تذاكر إركابه'),
                        CustomRadioListTile(
                          groupValue: controller.mablaghTaweedy,
                          value:
                              ' لا يصرف للمذكور مبلغًا تعويضًا عن تذاكر إركابه',
                          title:
                              ' لا يصرف للمذكور مبلغًا تعويضًا عن تذاكر إركابه',
                          onChanged: (value) {
                            controller.updateMablaghTaweedy(value);
                          },
                        ),
                      ],
                    ),
                  )
                ],
              ).scrollDirection(Axis.horizontal),
              Row(
                children: [
                  CustomButton(
                    text: "إضافة موظف",
                    onPressed: () {},
                    height: 30,
                    width: 100,
                  ),
                  CustomButton(
                    text: "طباعة أمر إركاب ",
                    onPressed: () {},
                    height: 30,
                    width: 120,
                  ),
                  CustomButton(
                    text: "طباعة أمر إنتداب",
                    onPressed: () {},
                    height: 30,
                    width: 120,
                  ),
                  CustomButton(
                    text: "طباعة قرار إنتداب",
                    onPressed: () {},
                    height: 30,
                    width: 120,
                  ),
                  CustomButton(
                    text: "استحقاق الراتب",
                    onPressed: () {},
                    height: 30,
                    width: 100,
                  ),
                  CustomButton(
                    text: "حفظ",
                    onPressed: () {},
                    height: 30,
                    width: 120,
                  ),
                ],
              ).scrollDirection(Axis.horizontal).center(),
              SizedBox(
                height: currentHeight / 1.5,
                width: currentWidth * 0.95,
                child: PlutoGrid(
                  configuration: const PlutoGridConfiguration(
                    columnSize: PlutoGridColumnSizeConfig(
                      autoSizeMode: PlutoAutoSizeMode.scale,
                    ),
                  ),
                  rows: [],
                  columns: [
                    PlutoColumn(
                      title: 'الاسم',
                      field: 'name',
                      type: PlutoColumnType.text(),
                    ),
                    PlutoColumn(
                      title: 'المرتبة',
                      field: 'rank',
                      type: PlutoColumnType.text(),
                    ),
                    PlutoColumn(
                      title: 'الدرجة',
                      field: 'degree',
                      type: PlutoColumnType.text(),
                    ),
                    PlutoColumn(
                      title: 'الراتب',
                      field: '  ',
                      type: PlutoColumnType.text(),
                    ),
                    PlutoColumn(
                      title: 'بدل النقل',
                      field: ' ',
                      type: PlutoColumnType.text(),
                    ),
                    PlutoColumn(
                      title: 'بدل الانتداب',
                      field: '',
                      type: PlutoColumnType.text(),
                    ),
                    PlutoColumn(
                      title: 'مدة الانتداب السابقة',
                      field: '      ',
                      type: PlutoColumnType.text(),
                    ),
                    PlutoColumn(
                      title: 'الانتداب الخارجي',
                      field: '    ',
                      type: PlutoColumnType.text(),
                    ),
                  ],
                  mode: PlutoGridMode.selectWithOneTap,
                  onSelected: (event) {},
                ),
              )
            ]).scrollDirection(Axis.vertical).paddingAll(15),
      ),
    );
  }
}
