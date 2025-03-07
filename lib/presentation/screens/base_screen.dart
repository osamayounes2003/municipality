import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:municipality/core/constants/app_colors.dart';
import 'package:municipality/core/constants/app_routes.dart';
import 'package:municipality/presentation/screens/tarmeez/mokhalafat/tarmeez_mokhalafat.dart';
import 'package:municipality/presentation/screens/tarmeez/tarmeez_beanat_al_baladea/view/tarmeez_beanat_al_baladea.dart';
import 'package:municipality/presentation/screens/tarmeez/wazefa/tarmeez_wazeefa.dart';
import 'package:municipality/presentation/screens/tarmeez/dowal/tasneef_al_dowal.dart';


import '../widgets/clickable_text.dart';
import '../widgets/custom_pop_up_menu_button.dart';

class BaseScreen extends GetResponsiveView {
  BaseScreen({super.key, required this.widget});

  final Widget widget;

  @override
  Widget build(BuildContext context) {
    double currentHeight = Get.height;
    double currentWidth = Get.width;
    return Scaffold(
        body: ListView(
      shrinkWrap: true,
      children: [
        Container(
          width: currentWidth,
          color: AppColors.blueAccent,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: SizedBox(
              height: currentHeight / 10,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  CustomPopupMenuButton(
                      buttonText: 'الموظفين و العاملين',
                      items: const [
                        PopupMenuItem(
                          value: AppRoutes.mokafaatAndTaweedat,
                          child: Text('المكافآت و التعويضات'),
                        ),

                      ],
                      onSelected: (page) {
                        switch (page) {
                          case AppRoutes.mokafaatAndTaweedat:
                            Get.toNamed(AppRoutes.mokafaatAndTaweedat);
                            break;


                        }
                      }),

                  CustomPopupMenuButton(
                      buttonText: 'الترميز',
                      items: const [
                        PopupMenuItem(
                          value: AppRoutes.tarmeezBeanatAlBaladea,
                          child: Text('ترميز بيانات البلدية'),
                        ),
                        PopupMenuItem(
                          value: AppRoutes.tarmeezGenseat,
                          child: Text('ترميز الجنسيات'),
                        ),
                        PopupMenuItem(
                          value: AppRoutes.tarmeezMokhalafat,
                          child: Text('ترميز المخالفات'),
                        ),
                        PopupMenuItem(
                          value: AppRoutes.tarmeezWazeefa,
                          child: Text('ترميز الوظيفة'),
                        ),
                        PopupMenuItem(
                          value: AppRoutes.tarmeezAlKisim,
                          child: Text('ترميز القسم'),
                        ),
                        PopupMenuItem(
                          value: AppRoutes.sollamDaragatAlAamal,
                          child: Text('سلم درجات العمال'),
                        ),

                        PopupMenuItem(
                          value: AppRoutes.tasneefAlDowal,
                          child: Text('تصنيف الدول'),
                        ),

                      ],
                      onSelected: (page) {
                        switch (page) {
                          case AppRoutes.tarmeezWazeefa:
                            Get.toNamed(AppRoutes.tarmeezWazeefa);
                            break;
                          case AppRoutes.tarmeezMokhalafat:
                            Get.toNamed(AppRoutes.tarmeezMokhalafat);
                            break;
                          case AppRoutes.tasneefAlDowal:
                            Get.toNamed(AppRoutes.tasneefAlDowal);
                            break;
                          case AppRoutes.sollamDaragatAlAamal:
                            Get.toNamed(AppRoutes.sollamDaragatAlAamal);
                            break;
                          case AppRoutes.tarmeezGenseat:
                            Get.toNamed(AppRoutes.tarmeezGenseat);
                            break;
                          case AppRoutes.tarmeezAlKisim:
                            Get.toNamed(AppRoutes.tarmeezAlKisim);
                            break;
                          case AppRoutes.tarmeezBeanatAlBaladea:
                            Get.toNamed(AppRoutes.tarmeezBeanatAlBaladea);
                            break;

                        }
                      }),
                  ClickableText(
                      text: 'البحث و الاستعلام',
                      onTap: () => Get.to(const TarmeezBeanatAlBaladea())),
                  ClickableText(
                      text: 'متابعة طلبات الموظفين',
                      onTap: () => Get.to(TarmeezMokhalafat())),
                  ClickableText(
                      text: 'التقارير و الطباعة',
                      onTap: () => Get.to(const TasneefAlDowal())),
                  CustomPopupMenuButton(
                      buttonText: 'خروج',
                      items: [
                        PopupMenuItem(
                          child: Text('تفويض'),
                          value: AppRoutes.tafweed,
                        ),
                        PopupMenuItem(
                          child: Text('بيانات الوظائف الأساسية'),
                          value: AppRoutes.beanatWazaefAsasea,
                        )
                      ],
                      onSelected: (page) {
                        switch (page) {
                          case AppRoutes.tafweed:
                            Get.toNamed(AppRoutes.tafweed);
                            break;
                          case AppRoutes.beanatWazaefAsasea:
                            Get.toNamed(AppRoutes.beanatWazaefAsasea);
                            break;
                        }
                      })
                ],
              ),
            ),
          ),
        ),
        widget,
      ],
    ));
  }
}
