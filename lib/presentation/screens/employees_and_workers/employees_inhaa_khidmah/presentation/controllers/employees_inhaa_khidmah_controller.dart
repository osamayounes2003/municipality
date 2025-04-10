import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class EmployeesInhaaKhidmahController extends GetxController {
  late final TextEditingController mosalsal = TextEditingController();
  late final TextEditingController decisionNumber = TextEditingController();
  late final TextEditingController decisionDate = TextEditingController();
  late final TextEditingController employee1 = TextEditingController();
  late final TextEditingController employee2 = TextEditingController();
  late final TextEditingController degree = TextEditingController();
  late final TextEditingController salary = TextEditingController();
  late final TextEditingController statusCardNumber = TextEditingController();
  late final TextEditingController job = TextEditingController();
  late final TextEditingController rank = TextEditingController();
  late final TextEditingController number = TextEditingController();
  late final TextEditingController jobType = TextEditingController();
  late final TextEditingController inhaaKhidmahDate = TextEditingController();
  late final TextEditingController igazahDaysNumber = TextEditingController();
  late final TextEditingController dateOfBirth = TextEditingController();
  late final TextEditingController age = TextEditingController();
  var isPicture = false.obs;
  var salaryFor4Months = false.obs;
  var salaryFor6Months = false.obs;
  void toggleCheckBoxValue(var variable) {
    variable.value = !variable.value;
  }

  var selectedRadioListTileValue = ''.obs;
  onChangePicture() {
    toggleCheckBoxValue(isPicture);
  }

  onChangeSalaryFor4Months() {
    toggleCheckBoxValue(salaryFor4Months);
  }

  onChangeSalaryFor6Months() {
    toggleCheckBoxValue(salaryFor6Months);
  }

  updateRadioListTileValue(value) {
    selectedRadioListTileValue.value = value;
  }
}
