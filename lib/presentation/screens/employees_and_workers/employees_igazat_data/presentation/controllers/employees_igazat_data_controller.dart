import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EmployeesIgazatDataController extends GetxController {
  late final TextEditingController mosalsal = TextEditingController();
  late final TextEditingController employee1 = TextEditingController();
  late final TextEditingController employee2 = TextEditingController();
  late final TextEditingController rank = TextEditingController();
  late final TextEditingController degree = TextEditingController();
  late final TextEditingController salary = TextEditingController();
  late final TextEditingController badalNaqel = TextEditingController();
  late final TextEditingController igazahRequestDate = TextEditingController();
  late final TextEditingController igazahType1 = TextEditingController();
  late final TextEditingController igazahType2 = TextEditingController();
  late final TextEditingController igazahDuration = TextEditingController();
  late final TextEditingController igazahStartDate = TextEditingController();
  late final TextEditingController igazahEndDate = TextEditingController();
  late final TextEditingController titleDuringIgazah = TextEditingController();
  late final TextEditingController notesForPrint = TextEditingController();
  late final TextEditingController directManager = TextEditingController();
  late final TextEditingController managerJob = TextEditingController();
  late final TextEditingController decisionNumber = TextEditingController();
  late final TextEditingController decisionDate = TextEditingController();
  late final TextEditingController istehqaqDate = TextEditingController();
  late final TextEditingController istehqaqStartDate = TextEditingController();
  late final TextEditingController istehqaqEndDate = TextEditingController();
  late final TextEditingController getWork = TextEditingController();
  late final TextEditingController fileNumber = TextEditingController();
  late final TextEditingController meeting = TextEditingController();
  late final TextEditingController medicalReportNumber =
      TextEditingController();
  late final TextEditingController medicalReportDate = TextEditingController();
  late final TextEditingController hospitalOfMedicalReport =
      TextEditingController();
  late final TextEditingController dayDate = TextEditingController();
  late final TextEditingController serviceStartDate = TextEditingController();
  late final TextEditingController administration = TextEditingController();
  RxString sarfRatebIgazah = 'لا أرغب بصرف راتبها مقدما'.obs;
  final List<String> sarfRatebIgazat = ['لا أرغب بصرف راتبها مقدما'];
  var isPicture = false.obs;
  var nadeb = false.obs;
  var done = false.obs;
  var cancel = false.obs;
  var igazahMostahaqah = false.obs;
  var directManagerAccept = false.obs;
  var tamdeedIgazahAccept = false.obs;
  void toggleCheckBoxValue(var variable) {
    variable.value = !variable.value;
  }

  onChangPicture() {
    toggleCheckBoxValue(isPicture);
  }

  onChangeDone() {
    toggleCheckBoxValue(done);
  }

  onChangeCancel() {
    toggleCheckBoxValue(cancel);
  }

  onChangNadeb() {
    toggleCheckBoxValue(nadeb);
  }

  onChangeManagerAccept() {
    toggleCheckBoxValue(directManagerAccept);
  }

  onChangeTamdeedIgazahAccept() {
    toggleCheckBoxValue(tamdeedIgazahAccept);
  }

  onChangeIgazahMostahaqah() {
    toggleCheckBoxValue(igazahMostahaqah);
  }

  void onChangeSarfRatebIgazah(value) {
    sarfRatebIgazah(value);
  }
}
