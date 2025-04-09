import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EmployeesMobasharahDecisionController extends GetxController {
  late final TextEditingController mosalsal = TextEditingController();
  late final TextEditingController decisionNumber = TextEditingController();
  late final TextEditingController mobasharahNumber = TextEditingController();
  late final TextEditingController decisionDate = TextEditingController();
  late final TextEditingController mobasharahDate = TextEditingController();
  late final TextEditingController employee1 = TextEditingController();
  late final TextEditingController employee2 = TextEditingController();
  late final TextEditingController rank = TextEditingController();
  late final TextEditingController degree = TextEditingController();
  late final TextEditingController salary = TextEditingController();
  late final TextEditingController badalNaqel = TextEditingController();
  late final TextEditingController startLeaveDate = TextEditingController();
  late final TextEditingController workMobasharahDate = TextEditingController();
  late final TextEditingController iqazahDuration = TextEditingController();
  late final TextEditingController litterDate = TextEditingController();
  late final TextEditingController headOfDepartment = TextEditingController();
  late final TextEditingController mobasharahDateUntilEndMonth =
      TextEditingController();
  late final TextEditingController workinkDays = TextEditingController();
  late final TextEditingController meeting = TextEditingController();
  late final TextEditingController transgressor = TextEditingController();
  RxString day = 'الأحد'.obs;
  var isPicture = false.obs;
  onChangedPicture() {
    isPicture.value = !isPicture.value;
  }

  void onChangeDay(value) {
    day(value);
  }

  final List<String> days = ['الأحد'];
}
