import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:municipality/core/constants/app_colors.dart';
import 'package:municipality/core/constants/app_routes.dart';
import 'package:municipality/core/extensions/widget_extension.dart';
import 'package:municipality/presentation/screens/base_screen.dart';
import 'package:municipality/presentation/screens/tarmeez/emp_degrees/emp_degrees_controller.dart';
import 'package:municipality/presentation/widgets/custom_button.dart';
import 'package:municipality/presentation/widgets/custom_data_table.dart';
import 'package:municipality/presentation/widgets/custom_text_feild.dart';

class EmpDegrees extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double currentWidth = Get.width;
    double currentHeight = Get.height;
    EmpDegreesController controller = Get.put(EmpDegreesController());
    final List<Map<String, String>> data = [
      {
        'rank': '3',
        'salary': '2300',
        'Category ': '20',
        'bonus ': '67',
        'Living_allowance': '45',
      },
      {
        'rank': '3',
        'salary': '2300',
        'Category ': '20',
        'bonus ': '67',
        'Living_allowance': '45',
      },
      {
        'rank': '3',
        'salary': '2300',
        'Category ': '20',
        'bonus ': '67',
        'Living_allowance': '45',
      },
      {
        'rank': '3',
        'salary': '2300',
        'Category ': '20',
        'bonus ': '67',
        'Living_allowance': '45',
      },
      {
        'rank': '3',
        'salary': '2300',
        'Category ': '20',
        'bonus ': '67',
        'Living_allowance': '45',
      },
      {
        'rank': '3',
        'salary': '2300',
        'Category ': '20',
        'bonus ': '67',
        'Living_allowance': '45',
      },
      {
        'rank': '3',
        'salary': '2300',
        'Category ': '20',
        'bonus ': '67',
        'Living_allowance': '45',
      },
      {
        'rank': '3',
        'salary': '2300',
        'Category ': '20',
        'bonus ': '67',
        'Living_allowance': '45',
      },
      {
        'rank': '3',
        'salary': '2300',
        'Category ': '20',
        'bonus ': '67',
        'Living_allowance': '45',
      },
      {
        'rank': '3',
        'salary': '2300',
        'Category ': '20',
        'bonus ': '67',
        'Living_allowance': '45',
      },
      {
        'rank': '3',
        'salary': '2300',
        'Category ': '20',
        'bonus ': '67',
        'Living_allowance': '45',
      },
      {
        'rank': '3',
        'salary': '2300',
        'Category ': '20',
        'bonus ': '67',
        'Living_allowance': '45',
      },
      {
        'rank': '3',
        'salary': '2300',
        'Category ': '20',
        'bonus ': '67',
        'Living_allowance': '45',
      },
      {
        'rank': '3',
        'salary': '2300',
        'Category ': '20',
        'bonus ': '67',
        'Living_allowance': '45',
      },
      {
        'rank': '3',
        'salary': '2300',
        'Category ': '20',
        'bonus ': '67',
        'Living_allowance': '45',
      },
    ];
    return Scaffold(
      body: BaseScreen(
          widget: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CustomTextField(
                controller: controller.categoryKey,
                suffixIcon: const Icon(
                  Icons.cancel,
                  size: 15,
                ).onTap(() {
                  controller.clearCategorySearchFeild();
                }),
                label: '  البحث عن فئة',
                hint: 'انقر للبحث',
                customHeight: 30,
                customWidth: currentWidth * 0.15,
                prefixIcon: const Icon(Icons.search),
              ),
              CustomTextField(
                controller: controller.degreeKey,
                label: '  البحث عن درجة',
                prefixIcon: const Icon(Icons.search),
                hint: 'انقر للبحث',
                customHeight: 30,
                suffixIcon: const Icon(
                  Icons.cancel,
                  size: 15,
                ).onTap(() {
                  controller.clearDegreeSearchFeild();
                }),
                customWidth: currentWidth * 0.15,
              ),
            ],
          ).scrollDirection(Axis.horizontal).marginOnly(right: 100, left: 100),
          Row(
            children: [
              CustomTextField(
                controller: controller.rank,
                label: 'المرتبة',
                customHeight: 30,
                customWidth: currentWidth * 0.1,
              ),
              CustomTextField(
                controller: controller.salary,
                label: 'الراتب',
                customHeight: 30,
                customWidth: currentWidth * 0.1,
              ),
              CustomTextField(
                controller: controller.category,
                label: "الفئة",
                customHeight: 30,
                customWidth: currentWidth * 0.1,
              ),
              CustomTextField(
                controller: controller.badalNaqel,
                label: 'بدل النقل',
                customHeight: 30,
                customWidth: currentWidth * 0.1,
              ),
              CustomTextField(
                controller: controller.bonus,
                label: 'العلاوة',
                customHeight: 30,
                customWidth: currentWidth * 0.1,
              ),
            ],
          ).scrollDirection(Axis.horizontal).marginOnly(right: 100, left: 100),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomButton(
                  text: 'حفظ', onPressed: () {}, height: 35, width: 70),
            ],
          ),
          SizedBox(
            child: CustomDataTable(
              columns: [
                "بدل المعيشة",
                "العلاوة ",
                "الفئة ",
                "الراتب",
                'الرتبة'
              ],
              rows: data.map((item) => item.values.toList()).toList(),
              height: currentHeight,
            ),
          ),
        ],
      )),
    );
  }
}
