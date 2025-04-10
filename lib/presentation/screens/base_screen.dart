import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:municipality/core/extensions/widget_extension.dart';
import 'package:municipality/presentation/screens/tarmeez/badal_countries/badal_countries.dart';
import 'package:municipality/presentation/screens/tarmeez/jobs/jobs.dart';
import '../../core/constants/app_colors.dart';
import '../../core/constants/app_routes.dart';
import '../widgets/clickable_text.dart';
import '../widgets/custom_pop_up_menu_button.dart';

class BaseScreen extends StatelessWidget {
  const BaseScreen({super.key, required this.widget});

  final Widget widget;

  @override
  Widget build(BuildContext context) {
    double currentHeight = Get.height;
    double currentWidth = Get.width;
    return Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          constraints:
              BoxConstraints(maxWidth: currentWidth, maxHeight: currentHeight),
          color: AppColors.blueAccent,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: SizedBox(
              height: currentHeight / 11,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ClickableText(
                    text: 'التجهيز و الإعداد',
                    onTap: () {},
                  ),

                  // Add spacing between items
                  CustomPopupMenuButton(
                      buttonText: 'الموظفين و العاملين',
                      items: const [
                        PopupMenuItem(
                          value: AppRoutes.employeesTafweed,
                          child: Text("تفويض"),
                        ),
                        PopupMenuItem(
                          value: AppRoutes.employeesKharijD,
                          child: Text("خارج الدوام"),
                        ),
                        PopupMenuItem(
                          value: AppRoutes.employeesIqrar,
                          child: Text("إقرار"),
                        ),
                        PopupMenuItem(
                          value: AppRoutes.employeesDissents,
                          child: Text("المخالفات"),
                        ),
                        PopupMenuItem(
                          value: AppRoutes.employeesEmployeeCycle,
                          child: Text("دورة موظف"),
                        ),
                        PopupMenuItem(
                          value: AppRoutes.employeesMedicalExaminationRequest,
                          child: Text("طلب كشف طبي"),
                        ),
                        PopupMenuItem(
                          value: AppRoutes.employeesHasem,
                          child: Text("بيانات الحسم"),
                        ),
                        PopupMenuItem(
                          value: AppRoutes.employeesMobasharahDecision,
                          child: Text("قرار مباشرة"),
                        ),
                        PopupMenuItem(
                          value: AppRoutes.employeesIntedab,
                          child: Text("بيانات الانتداب"),
                        ),
                        PopupMenuItem(
                          value: AppRoutes.employeesIgazatData,
                          child: Text("بيانات الإجازات"),
                        ),
                        PopupMenuItem(
                          value: AppRoutes.employeesTarkeahEmployee,
                          child: Text("ترقية موظف"),
                        ),
                        PopupMenuItem(
                          value: AppRoutes.employeesInhaaKhidmah,
                          child: Text("إنهاء خدمة"),
                        ),
                        PopupMenuItem(
                          value: AppRoutes.employeesTaeenAndMobasharah,
                          child: Text("تعيين و مباشرة"),
                        ),
                        PopupMenuItem(
                          value: AppRoutes.employeesBeanatWazefahAsaseah,
                          child: Text("بيانات الوظائف الأساسية"),
                        )
                      ],
                      onSelected: (page) {
                        switch (page) {
                          case AppRoutes.employeesTafweed:
                            Get.toNamed(AppRoutes.employeesTafweed);
                            break;
                          case AppRoutes.employeesKharijD:
                            Get.toNamed(AppRoutes.employeesKharijD);
                            break;
                          case AppRoutes.employeesIqrar:
                            Get.toNamed(AppRoutes.employeesIqrar);
                            break;
                          case AppRoutes.employeesDissents:
                            Get.toNamed(AppRoutes.employeesDissents);
                            break;
                          case AppRoutes.employeesEmployeeCycle:
                            Get.toNamed(AppRoutes.employeesEmployeeCycle);
                            break;
                          case AppRoutes.employeesMedicalExaminationRequest:
                            Get.toNamed(
                                AppRoutes.employeesMedicalExaminationRequest);
                            break;
                          case AppRoutes.employeesHasem:
                            Get.toNamed(AppRoutes.employeesHasem);
                            break;
                          case AppRoutes.employeesMobasharahDecision:
                            Get.toNamed(AppRoutes.employeesMobasharahDecision);
                            break;
                          case AppRoutes.employeesIntedab:
                            Get.toNamed(AppRoutes.employeesIntedab);
                            break;
                          case AppRoutes.employeesIgazatData:
                            Get.toNamed(AppRoutes.employeesIgazatData);
                            break;
                          case AppRoutes.employeesTarkeahEmployee:
                            Get.toNamed(AppRoutes.employeesTarkeahEmployee);
                            break;
                          case AppRoutes.employeesInhaaKhidmah:
                            Get.toNamed(AppRoutes.employeesInhaaKhidmah);
                            break;
                          case AppRoutes.employeesTaeenAndMobasharah:
                            Get.toNamed(AppRoutes.employeesTaeenAndMobasharah);
                            break;
                          case AppRoutes.employeesBeanatWazefahAsaseah:
                            Get.toNamed(
                                AppRoutes.employeesBeanatWazefahAsaseah);
                            break;
                        }
                      }),

                  CustomPopupMenuButton(
                      buttonText: 'الترميز',
                      items: const [
                        PopupMenuItem(
                          value: AppRoutes.baladiaInfo,
                          child: Text(' بيانات البلدية'),
                        ),
                        PopupMenuItem(
                          value: AppRoutes.nations,
                          child: Text('أنواع الجنسيات'),
                        ),
                        PopupMenuItem(
                          value: AppRoutes.badal,
                          child: Text('بدل الانتداب '),
                        ),
                        PopupMenuItem(
                          value: AppRoutes.dissents,
                          child: Text('أنواع المخالفات'),
                        ),
                        PopupMenuItem(
                          value: AppRoutes.jobs,
                          child: Text('أنواع الوظائف'),
                        ),
                        PopupMenuItem(
                          value: AppRoutes.parts,
                          child: Text('أنواع الأقسام'),
                        ),
                        PopupMenuItem(
                          value: AppRoutes.badalCountries,
                          child: Text('  تصنيف الدول حسب فئات البدل'),
                        ),
                        PopupMenuItem(
                          value: AppRoutes.empDegrees,
                          child: Text('سلم درجات العمال'),
                        ),
                      ],
                      onSelected: (page) {
                        switch (page) {
                          case AppRoutes.jobs:
                            Get.toNamed(AppRoutes.jobs);
                            break;
                          case AppRoutes.dissents:
                            Get.toNamed(AppRoutes.dissents);
                            break;
                          case AppRoutes.badalCountries:
                            Get.toNamed(AppRoutes.badalCountries);
                            break;
                          case AppRoutes.nations:
                            Get.toNamed(AppRoutes.nations);
                            break;
                          case AppRoutes.baladiaInfo:
                            Get.toNamed(AppRoutes.baladiaInfo);
                            break;
                          case AppRoutes.badal:
                            Get.toNamed(AppRoutes.badal);
                            break;
                          case AppRoutes.empDegrees:
                            Get.toNamed(AppRoutes.empDegrees);
                            break;
                          case AppRoutes.parts:
                            Get.toNamed(AppRoutes.parts);
                            break;
                        }
                      }),
                  CustomPopupMenuButton(
                      buttonText: 'البحث و الاستعلام',
                      items: const [
                        PopupMenuItem(
                          value: AppRoutes.employeeSearch,
                          child: Text('الاستعلام عن موظف'),
                        ),
                        PopupMenuItem(
                          value: AppRoutes.intedabSearch,
                          child: Text('الاستعلام عن انتداب'),
                        ),
                        PopupMenuItem(
                          value: AppRoutes.kharijDawamSearch,
                          child: Text(' الاستعلام عن خارج الدوام'),
                        ),
                        PopupMenuItem(
                          value: AppRoutes.hasmeatSearch,
                          child: Text(' الاستعلام عن الحسميات'),
                        ),
                        PopupMenuItem(
                          value: AppRoutes.dissentSearch,
                          child: Text(' الاستعلام عن المخالفات'),
                        ),
                        PopupMenuItem(
                          value: AppRoutes.ijazatSearch,
                          child: Text(' الاستعلام عن إجازة'),
                        ),
                        PopupMenuItem(
                          value: AppRoutes.dawratSearch,
                          child: Text(' الاستعلام عن الدورات'),
                        ),
                        PopupMenuItem(
                          value: AppRoutes.medicalExaminationSearch,
                          child: Text(' الاستعلام عن كشف طبي'),
                        ),
                        PopupMenuItem(
                          value: AppRoutes.qararMobasharahSearch,
                          child: Text(' الاستعلام عن مباشرة'),
                        ),
                        PopupMenuItem(
                          value: AppRoutes.iqrarSearch,
                          child: Text(' الاستعلام عن إقرار'),
                        ),
                        PopupMenuItem(
                          value: AppRoutes.promotionSearch,
                          child: Text(' الاستعلام عن ترقية'),
                        ),
                        PopupMenuItem(
                          value: AppRoutes.endServiceSearch,
                          child: Text(' الاستعلام عن إلغاء خدمة'),
                        ),
                        // PopupMenuItem(
                        //   value: AppRoutes.hasmeatSearch,
                        //   child: Text(' الاستعلام عن إقرار جواز سفر'),
                        // ),
                        PopupMenuItem(
                          value: AppRoutes.tafweedSearch,
                          child: Text(' الاستعلام عن تفويض'),
                        ),
                      ],
                      onSelected: (page) {
                        switch (page) {
                          case AppRoutes.employeeSearch:
                            Get.toNamed(AppRoutes.employeeSearch);
                            break;
                          case AppRoutes.intedabSearch:
                            Get.toNamed(AppRoutes.intedabSearch);
                            break;
                          case AppRoutes.dissentSearch:
                            Get.toNamed(AppRoutes.dissentSearch);
                            break;
                          case AppRoutes.dawratSearch:
                            Get.toNamed(AppRoutes.dawratSearch);
                            break;
                          case AppRoutes.ijazatSearch:
                            Get.toNamed(AppRoutes.ijazatSearch);
                            break;
                          case AppRoutes.kharijDawamSearch:
                            Get.toNamed(AppRoutes.kharijDawamSearch);
                            break;
                          case AppRoutes.hasmeatSearch:
                            Get.toNamed(AppRoutes.hasmeatSearch);
                            break;
                          case AppRoutes.tafweedSearch:
                            Get.toNamed(AppRoutes.tafweedSearch);
                            break;
                          case AppRoutes.medicalExaminationSearch:
                            Get.toNamed(AppRoutes.medicalExaminationSearch);
                            break;
                          case AppRoutes.qararMobasharahSearch:
                            Get.toNamed(AppRoutes.qararMobasharahSearch);
                            break;
                          case AppRoutes.promotionSearch:
                            Get.toNamed(AppRoutes.promotionSearch);
                            break;
                          case AppRoutes.iqrarSearch:
                            Get.toNamed(AppRoutes.iqrarSearch);
                            break;
                          case AppRoutes.endServiceSearch:
                            Get.toNamed(AppRoutes.endServiceSearch);
                            break;
                        }
                      }),
                  CustomPopupMenuButton(
                      buttonText: "متابعة طلبات الموظفين",
                      items: const [
                        PopupMenuItem(
                          child: Text('متابعة طلبات الموظفين'),
                          value: AppRoutes.leaveRequestsTracking,
                        ),
                        PopupMenuItem(
                          child: Text('ترحيل رصيد الاجازات'),
                          value: AppRoutes.transferringLeaveBalance,
                        ),
                      ],
                      onSelected: (page) {
                        switch (page) {
                          case AppRoutes.leaveRequestsTracking:
                            Get.toNamed(AppRoutes.leaveRequestsTracking);
                            break;
                          case AppRoutes.transferringLeaveBalance:
                            Get.toNamed(AppRoutes.transferringLeaveBalance);
                            break;
                        }
                      }),
                  ClickableText(
                    text: 'التقارير و الطباعة',
                    onTap: () => Get.to(
                      const BadalCountries(),
                    ),
                  ),
                  ClickableText(
                    text: 'خروج',
                    onTap: () => Get.to(
                      Jobs(),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        widget.expanded(flex: 1),
      ],
    ));
  }
}
