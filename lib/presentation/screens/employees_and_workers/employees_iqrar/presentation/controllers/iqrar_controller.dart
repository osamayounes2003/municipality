import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EmployeesIqrarController extends GetxController {
  late final TextEditingController mosalsal = TextEditingController();
  late final TextEditingController iqrarDate = TextEditingController();
  late final TextEditingController morselKhitab = TextEditingController();
  late final TextEditingController khitabDate = TextEditingController();
  late final TextEditingController khitabNum = TextEditingController();
  late final TextEditingController maqar = TextEditingController();
  late final TextEditingController makanHodour = TextEditingController();
  var isPicture = false.obs;
  void onChangedPicture() {
    isPicture.value = !isPicture.value;
  }
}
