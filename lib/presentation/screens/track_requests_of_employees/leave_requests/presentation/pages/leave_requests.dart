import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:municipality/core/constants/app_colors.dart';
import 'package:municipality/core/extensions/widget_extension.dart';
import 'package:municipality/presentation/screens/base_screen.dart';
import 'package:municipality/presentation/screens/track_requests_of_employees/leave_requests/presentation/controllers/leave_requests_controller.dart';
import 'package:municipality/presentation/widgets/custom_button.dart';
import 'package:municipality/presentation/screens/track_requests_of_employees/leave_requests/presentation/widgets/custom_ratio_button.dart';
import 'package:municipality/presentation/widgets/custom_radio_list_tile.dart';
import 'package:municipality/presentation/widgets/custom_text_feild.dart';
import 'package:pluto_grid/pluto_grid.dart';

import '../../../../../../core/functions/hijri_picker.dart';
import '../../../../../widgets/drop_down_button_with_feild.dart';

class LeaveRequestsTracking extends StatelessWidget {
  const LeaveRequestsTracking({super.key});

  @override
  Widget build(BuildContext context) {
    LeaveRequestsController controller = Get.put(LeaveRequestsController());
    HijriPicker credentialsDate = HijriPicker(controller.date);
    double currentWidth = Get.width;
    double currentHeight = Get.height;

    return Scaffold(
      body: BaseScreen(
        widget: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CustomTextField(
                      enabled: false,
                      controller: controller.employee,
                      label: 'الموظف',
                      customHeight: 35,
                      customWidth: 200),
                  DropdownTextField(
                      hintText: '',
                      items: ['بوابة الموظف', "بوابة العمال "],
                      controller: controller.gateType,
                      selectedValue: controller.selectedGateType,
                      label: 'نوع البوابة',
                      customHeight: 35,
                      customWidth: 200),
                  Obx(
                    () => Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomRadioListTile(
                          value: 'الكل',
                          title: 'الكل',
                          groupValue: controller.selectedRatioButton.value,
                          onChanged: (value) {
                            controller.updateOrderTypeValue(value);
                          },
                        ),
                        CustomRadioListTile(
                          value: 'جاري مراجعة الطلب',
                          title: 'جاري مراجعة الطلب',
                          groupValue: controller.selectedRatioButton.value,
                          onChanged: (value) {
                            controller.updateOrderTypeValue(value);
                          },
                        ),
                        CustomRadioListTile(
                          value: 'تم رفض الطلب',
                          title: 'تم رفض الطلب',
                          groupValue: controller.selectedRatioButton.value,
                          onChanged: (value) {
                            controller.updateOrderTypeValue(value);
                          },
                        ),
                      ],
                    ).paddingAll(20),
                  )
                ],
              ).scrollDirection(Axis.horizontal).paddingAll(15),
              Obx(
                () => Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: 300,
                      height: 400,
                      color: controller.isCredentials.value
                          ? AppColors.blackLight
                          : AppColors.blackLightest,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text("بيانات اعتماد"),
                          Text(
                              "اسم الموظف : ..................................."),
                          CustomTextField(
                              enabled: controller.isCredentials.value,
                              controller: controller.orderId,
                              label: 'رقم الطلب',
                              customHeight: 25,
                              customWidth: 200),
                          CustomTextField(
                              enabled: controller.isCredentials.value,
                              controller: controller.transferredBalance,
                              label: 'الرصيد المرحل ',
                              customHeight: 25,
                              customWidth: 200),
                          CustomTextField(
                              enabled: controller.isCredentials.value,
                              controller: controller.date,
                              suffixIcon: Icon(
                                Icons.date_range_sharp,
                                size: 20,
                              ),
                              onTap: () =>
                                  credentialsDate.pickHijriDate(context),
                              label: 'تاريخ الاعتماد',
                              customHeight: 25,
                              customWidth: 200),
                          Row(
                            children: [
                              Container(
                                child: Text(
                                    'قائمة للذين سيرسل لهم صورة من القرار'),
                                constraints: BoxConstraints(maxWidth: 60),
                              ),
                              CustomTextField(
                                  enabled: controller.isCredentials.value,
                                  controller:
                                      controller.peopleConcernedWithDecision,
                                  label: '',
                                  customHeight: 60,
                                  customWidth: 200),
                            ],
                          ),
                          CustomButton(
                              text: 'اعتماد طاب الاجازة',
                              onPressed: () {},
                              height: 25,
                              width: 150),
                        ],
                      ).paddingAll(10),
                    ),
                    const SizedBox(
                      width: 300,
                    ),
                    Container(
                      height: 400,
                      width: 300,
                      color: controller.rejectionData.value
                          ? AppColors.blackLight
                          : AppColors.blackLightest,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text("بيانات الرفض"),
                          Text(
                              "اسم الموظف : ..................................."),
                          CustomTextField(
                              enabled: controller.rejectionData.value,
                              controller: controller.orderId,
                              label: 'رقم الطلب',
                              customHeight: 25,
                              customWidth: 200),
                          CustomTextField(
                              enabled: controller.rejectionData.value,
                              controller: controller.reasonForRejection,
                              label: 'سبب الرفض',
                              customHeight: 50,
                              customWidth: 200),
                          CustomButton(
                              text: 'رفض',
                              onPressed: () {},
                              height: 25,
                              width: 150),
                        ],
                      ),
                    )
                  ],
                ).scrollDirection(Axis.horizontal),
              ),

              const SizedBox(height: 20), // Add spacing
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomButton(
                      text: "بحث ", onPressed: () {}, height: 35, width: 100),
                  CustomButton(
                      text: "بحث جديد",
                      onPressed: () {
                        controller.isCredentials.value =
                            !controller.isCredentials.value;
                      },
                      height: 35,
                      width: 100)
                ],
              ),
              const SizedBox(height: 20),
              SizedBox(
                  width: currentWidth * 0.95,
                  height: currentHeight / 1.5,
                  child: PlutoGrid(
                    configuration: PlutoGridConfiguration(
                      columnSize: PlutoGridColumnSizeConfig(
                        autoSizeMode: PlutoAutoSizeMode.none,
                      ),
                    ),
                    rows: [],
                    columns: [
                      PlutoColumn(
                        title: 'رقم الطلب',
                        width: 200,
                        field: 'order_id',
                        type: PlutoColumnType.text(),
                      ),
                      PlutoColumn(
                        title: 'رقم الموظف',
                        field: 'employee_id',
                        type: PlutoColumnType.text(),
                      ),
                      PlutoColumn(
                        title: 'اسم الموظف',
                        field: 'employee',
                        type: PlutoColumnType.text(),
                      ),
                      PlutoColumn(
                        title: 'تاريخ الطلب',
                        field: 'order_date',
                        type: PlutoColumnType.text(),
                      ),
                      PlutoColumn(
                        title: 'نوع الإجازة',
                        field: 'leave_type',
                        type: PlutoColumnType.text(),
                      ),
                      PlutoColumn(
                        title: 'نوع الطلب',
                        field: 'order_type',
                        type: PlutoColumnType.text(),
                      ),
                      PlutoColumn(
                        title: 'مدة الإجازة',
                        field: 'leave_duration',
                        type: PlutoColumnType.text(),
                      ),
                      PlutoColumn(
                        title: 'تاريخ بداية الاجازة',
                        field: 'leave_start_date',
                        type: PlutoColumnType.text(),
                      ),
                      PlutoColumn(
                        title: 'تاريخ انتهاء الاجازة',
                        field: 'leave_end_date',
                        type: PlutoColumnType.text(),
                      ),
                      PlutoColumn(
                        title: 'الموظف البديل',
                        field: 'substitute_employee',
                        type: PlutoColumnType.text(),
                      ),
                      PlutoColumn(
                        title: 'الرئيس المباشر',
                        field: 'direct_supervisor',
                        type: PlutoColumnType.text(),
                      ),
                      PlutoColumn(
                        title: 'مدير الإدارة',
                        field: 'administration_manager',
                        type: PlutoColumnType.text(),
                      ),
                      PlutoColumn(
                        title: 'حالة الطلب',
                        field: 'order_status',
                        type: PlutoColumnType.text(),
                      ),
                      PlutoColumn(
                        title: 'اعتماد',
                        field: 'accept',
                        type: PlutoColumnType.text(),
                      ),
                      PlutoColumn(
                        title: "رفض",
                        field: 'reject',
                        type: PlutoColumnType.text(),
                      ),
                    ],
                    mode: PlutoGridMode.selectWithOneTap,
                    onSelected: (event) {},
                  )).paddingAll(15).scrollDirection(Axis.horizontal),
            ],
          ),
        ),
      ),
    );
  }
}
