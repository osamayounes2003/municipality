import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:municipality/core/extensions/widget_extension.dart';
import 'package:municipality/presentation/screens/base_screen.dart';

import '../../widgets/custom_button.dart';
import '../../widgets/custom_text_feild.dart';


class Tafweed extends StatelessWidget {
  const Tafweed({super.key});

  @override
  Widget build(BuildContext context) {
    double currentWidth = Get.width;
    double currentHeight = Get.height;

    return Scaffold(
        body: BaseScreen(
            widget: Center(
      child: ListView(shrinkWrap: true, children: [
        SizedBox(
          width: currentWidth,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  CustomTextField(
                    label: "مسلسل",
                    customHeight: 40,
                    customWidth: currentWidth / 4,
                  ),
                  Spacer(),
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('تاريخ البداية: ....  ........  ..........هجري'),
                      Text('تاريخ البداية : ...  .........  ..........هجري'),
                    ],
                  ).paddingAll(20)
                ],
              ).scrollDirection(Axis.vertical),
              Row(
                children: [
                  CustomTextField(
                    label: "الموضوع",
                    customHeight: 40,
                    customWidth: currentWidth / 2,
                  ),
                  Spacer(),
                  Column(
                    children: [
                      CustomButton(text: 'تفويض جديد', onPressed: (){}, height: 50, width: 200),
                      CustomButton(text: 'التقرير', onPressed: (){}, height: 50, width: 200),
                    ],
                  )
                ],
              ).scrollDirection(Axis.vertical),
              Row(
                children: [
                  CustomTextField(
                    label: "اليوم",
                    customHeight: 40,
                    customWidth: currentWidth / 2,
                  ),
                ],
              ),
              Row(
                children: [
                  CustomTextField(
                    label: "الموظف",
                    customHeight: 40,
                    customWidth: currentWidth / 2,
                  ),
                ],
              ),
              Row(
                children: [
                  CustomTextField(
                      label: 'ملاحظات',
                      customHeight: 100,
                      customWidth: currentWidth / 2),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomButton(
                    text: 'حفظ',
                    onPressed: () => {},
                    height: 50,
                    width: 80,
                  ),
                  CustomButton(
                    text: 'حذف',
                    onPressed: () => {},
                    height: 50,
                    width: 80,
                  ),
                  CustomButton(
                    text: 'عودة',
                    onPressed: () => {},
                    height: 50,
                    width: 80,
                  ),
                ],
              ).scrollDirection(Axis.horizontal),
            ],
          ).scrollDirection(Axis.vertical),
        ).paddingAll(5),

      ]),
    )));
  }
}
