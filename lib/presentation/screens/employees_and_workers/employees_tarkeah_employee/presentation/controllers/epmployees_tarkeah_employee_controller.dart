import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EmployeesTarkeahEmployeeController extends GetxController {
  late final TextEditingController mosalsal = TextEditingController();
  late final TextEditingController decisionNumber = TextEditingController();
  late final TextEditingController decisionDate = TextEditingController();
  late final TextEditingController litterNumber = TextEditingController();
  late final TextEditingController litterDate = TextEditingController();
  late final TextEditingController authenticationNumber =
      TextEditingController();
  late final TextEditingController authenticationDate = TextEditingController();
  late final TextEditingController mahdarNumber = TextEditingController();
  late final TextEditingController mahdarDate = TextEditingController();
  late final TextEditingController employee1 = TextEditingController();
  late final TextEditingController employee2 = TextEditingController();
  late final TextEditingController statuesCardNumber = TextEditingController();

  //F ====> Field
  //from
  late final TextEditingController jobTitle1F1 = TextEditingController();
  late final TextEditingController jobTitle1F2 = TextEditingController();
  late final TextEditingController rank1 = TextEditingController();
  late final TextEditingController number1F1 = TextEditingController();
  late final TextEditingController number1F2 = TextEditingController();
  late final TextEditingController salary1 = TextEditingController();
  late final TextEditingController badalNaqel1 = TextEditingController();
  late final TextEditingController natureOfWork1 = TextEditingController();
  late final TextEditingController part1F1 = TextEditingController();
  late final TextEditingController part1F2 = TextEditingController();

  //to
  late final TextEditingController jobTitle2F1 = TextEditingController();
  late final TextEditingController jobTitle2F2 = TextEditingController();
  late final TextEditingController rank2 = TextEditingController();
  late final TextEditingController number2F1 = TextEditingController();
  late final TextEditingController number2F2 = TextEditingController();
  late final TextEditingController salary2 = TextEditingController();
  late final TextEditingController badalNaqel2 = TextEditingController();
  late final TextEditingController natureOfWork2 = TextEditingController();
  late final TextEditingController part2F1 = TextEditingController();
  late final TextEditingController part2F2 = TextEditingController();

  late final TextEditingController precentOfNatureWork =
      TextEditingController();
  late final TextEditingController mobasharahDate = TextEditingController();
  late final TextEditingController mobasharahLitterNumber =
      TextEditingController();
  late final TextEditingController mobasharahLitterDate =
      TextEditingController();
  RxString mobasharahDay = 'الأحد'.obs;

  var isPicture = false.obs;
  onChangeMobasharahDay(value) {
    mobasharahDay(value);
  }

  onChangedPicture() {
    isPicture.value = !isPicture.value;
  }

  final List<String> mobasharahDays = ['الأحد'];
}
