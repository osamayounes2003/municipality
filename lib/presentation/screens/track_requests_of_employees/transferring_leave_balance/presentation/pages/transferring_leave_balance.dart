import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:municipality/core/constants/app_colors.dart';
import 'package:municipality/core/extensions/widget_extension.dart';
import 'package:municipality/presentation/screens/base_screen.dart';
import 'package:municipality/presentation/screens/track_requests_of_employees/transferring_leave_balance/presentation/controllers/transferring_leave_balance_controller.dart';
import 'package:municipality/presentation/widgets/custom_button.dart';
import 'package:municipality/presentation/widgets/custom_text_feild.dart';
import 'package:pluto_grid/pluto_grid.dart';

import '../../../../../../core/functions/hijri_picker.dart';

class TransferringLeaveBalance extends StatelessWidget {
  const TransferringLeaveBalance({super.key});

  @override
  Widget build(BuildContext context) {
    TransferringLeaveBalanceController controller =
        Get.put(TransferringLeaveBalanceController());
    HijriPicker credentialsDate = HijriPicker(controller.date);
    double currentWidth = Get.width;
    double currentHeight = Get.height;

    return Scaffold(
      body: BaseScreen(
        widget: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(children: [
                CustomTextField(
                    enabled: false,
                    controller: controller.employee,
                    label: 'الموظف',
                    customHeight: 35,
                    customWidth: 200),
              ]).scrollDirection(Axis.horizontal).paddingAll(15),
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
                          const Text("بيانات اعتماد"),
                          const Text(
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
                              suffixIcon: const Icon(
                                Icons.date_range_sharp,
                                size: 20,
                              ),
                              onTap: () =>
                                  credentialsDate.pickHijriDate(context),
                              label: 'تاريخ الاعتماد',
                              customHeight: 25,
                              customWidth: 200),
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
                      width: 300,
                      height: 400,
                      color: controller.rejectionData.value
                          ? AppColors.blackLight
                          : AppColors.blackLightest,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text("بيانات اعتماد"),
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
                              controller: controller.transferredBalance,
                              label: 'الرصيد المرحل ',
                              customHeight: 25,
                              customWidth: 200),
                          CustomTextField(
                              enabled: controller.rejectionData.value,
                              controller: controller.date,
                              suffixIcon: const Icon(
                                Icons.date_range_sharp,
                                size: 20,
                              ),
                              onTap: () =>
                                  credentialsDate.pickHijriDate(context),
                              label: 'تاريخ الاعتماد',
                              customHeight: 25,
                              customWidth: 200),
                          CustomButton(
                              text: 'اعتماد طاب الاجازة',
                              onPressed: () {},
                              height: 25,
                              width: 150),
                        ],
                      ).paddingAll(10),
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
                        controller.rejectionData.value =
                            !controller.rejectionData.value;
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
                    configuration: const PlutoGridConfiguration(
                      columnSize: PlutoGridColumnSizeConfig(
                        autoSizeMode: PlutoAutoSizeMode.none,
                      ),
                    ),
                    rows: [],
                    columns: [
                      PlutoColumn(
                        title: 'اسم الموظف',
                        field: 'employee',
                        type: PlutoColumnType.text(),
                      ),
                      PlutoColumn(
                        title: 'رقم الموظف',
                        field: 'employee_id',
                        type: PlutoColumnType.text(),
                      ),
                      PlutoColumn(
                        title: 'متمتع السنة السابقة',
                        field: 'previous_year',
                        type: PlutoColumnType.text(),
                      ),
                      PlutoColumn(
                        title: 'الرصيد المرحل للسنة القادمة',
                        field: 'leave_balance_for_next_year',
                        type: PlutoColumnType.text(),
                      ),
                      PlutoColumn(
                        title: 'رقم الطلب',
                        field: 'order_id',
                        type: PlutoColumnType.text(),
                      ),
                      PlutoColumn(
                        title: 'تاريخ الاعتماد',
                        field: 'accept_date',
                        type: PlutoColumnType.text(),
                      ),
                      PlutoColumn(
                        title: "اعتماد",
                        field: "accept",
                        type: PlutoColumnType.text(),
                      ),
                      PlutoColumn(
                        title: "إلغاء الاعتماد",
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
