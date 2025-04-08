import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EmployeesMedicalExaminationRequestController extends GetxController {
  late final TextEditingController mosalsal = TextEditingController();
  late final TextEditingController employee1 = TextEditingController();
  late final TextEditingController employee2 = TextEditingController();
  late final TextEditingController unit = TextEditingController();
  late final TextEditingController notes = TextEditingController();
  late final TextEditingController examinationDate = TextEditingController();
  final List<String> units = [];
  final List<String> statesOfEmployee = [];
  RxString unitType = "".obs;
  RxString employeeState = "".obs;
  onChangedUnitType(value) {
    unitType(value);
  }

  onChangedEmployeeState(value) {
    employeeState(value);
  }

  var isPicture = false.obs;
  void onChangedPicture() {
    isPicture.value = !isPicture.value;
  }
}
