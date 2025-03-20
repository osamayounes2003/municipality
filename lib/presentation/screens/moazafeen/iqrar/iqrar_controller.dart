import 'package:flutter/material.dart';
import 'package:get/get.dart';

class IqrarController extends GetxController {
  late final TextEditingController mosalsal;
  late final TextEditingController iqrarDate;
  late final TextEditingController morselKhitab;
  late final TextEditingController khitabDate;
  late final TextEditingController khitabNum;
  late final TextEditingController maqar;
  late final TextEditingController makanHodour;

  @override
  void onInit() {
    super.onInit();
    mosalsal = TextEditingController();
    iqrarDate = TextEditingController();
    morselKhitab = TextEditingController();
    khitabDate = TextEditingController();
    khitabNum = TextEditingController();
    maqar = TextEditingController();
    makanHodour = TextEditingController();
  }

  @override
  void onClose() {
    mosalsal.dispose();
    iqrarDate.dispose();
    morselKhitab.dispose();
    khitabDate.dispose();
    khitabNum.dispose();
    maqar.dispose();
    makanHodour.dispose();
    super.onClose();
  }
}
