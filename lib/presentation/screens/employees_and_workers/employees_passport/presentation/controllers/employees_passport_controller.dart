import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EmployeesPassportController extends GetxController {
  late final TextEditingController mosalsal = TextEditingController();
  late final TextEditingController iqrarDate = TextEditingController();
  late final TextEditingController name = TextEditingController();
  late final TextEditingController issuedBy = TextEditingController();
  late final TextEditingController nationality1 = TextEditingController();
  late final TextEditingController nationality2 = TextEditingController();
  late final TextEditingController passportNumber = TextEditingController();
  late final TextEditingController shahed = TextEditingController();
  var isPicture = false.obs;
  void onChangedPicture() {
    isPicture.value = !isPicture.value;
  }
}
