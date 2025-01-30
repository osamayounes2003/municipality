import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:municipality/constants/app_colors.dart';
import 'package:municipality/presentation/screens/mokafaat_and_taweedat.dart';import 'package:municipality/presentation/screens/tarmeez/tarmeez_mokhalafat.dart';
import 'package:municipality/presentation/screens/tarmeez/tarmeez_beanat_al_baladea.dart';
import 'package:municipality/presentation/screens/tarmeez/tarmeez_genseat.dart';
import 'package:municipality/presentation/screens/tarmeez/tarmeez_wazeefa.dart';
import 'package:municipality/presentation/screens/tasneef/tasneef_al_dowal.dart';
import 'package:municipality/presentation/wedgits/clickable_text.dart';
class BaseScreen extends StatelessWidget {
  const BaseScreen({super.key, required this.widget});

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
              height: currentHeight/10,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Tooltip(
                    message: 'بببببببب',
                    child: ClickableText(
                        text: 'التجهيز و الإعداد', onTap: () {
                                },),
                  ),
                  // Add spacing between items
                  ClickableText(
                      text: 'الموظفين/العاملين', onTap: () => Get.to(MokafaatAndTaweedat())),

                  ClickableText(text: 'الترميز', onTap: () => Get.to(TarmeezGenseat())),

                  ClickableText(
                      text: 'البحث و الاستعلام', onTap: () => Get.to(TarmeezBeanatAlBaladea())),

                  ClickableText(
                      text: 'متابعة طلبات الموظفين', onTap: () => Get.to(TarmeezMokhalafat())),
                  ClickableText(
                      text: 'التقارير و الطباعة', onTap: () => Get.to(TasneefAlDowal())),
                  ClickableText(text: 'خروج', onTap: () => Get.to( TarmeezWazeefa())),
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
