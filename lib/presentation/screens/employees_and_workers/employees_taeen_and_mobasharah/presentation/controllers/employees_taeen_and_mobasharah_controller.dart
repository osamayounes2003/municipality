import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class EmployeesTaeenAndMobasharahController extends GetxController {
  late final TextEditingController mosalsal = TextEditingController();
  late final TextEditingController decisionNumber = TextEditingController();
  late final TextEditingController decisionDate = TextEditingController();
  late final TextEditingController employee1 = TextEditingController();
  late final TextEditingController employee2 = TextEditingController();
  late final TextEditingController degree = TextEditingController();
  late final TextEditingController salary = TextEditingController();
  late final TextEditingController part = TextEditingController();
  late final TextEditingController job = TextEditingController();
  late final TextEditingController rank = TextEditingController();
  late final TextEditingController naqel = TextEditingController();
  late final TextEditingController number = TextEditingController();
  late final TextEditingController socialInsuranceNumber =
      TextEditingController();
  late final TextEditingController litterNumber = TextEditingController();
  late final TextEditingController litterDate = TextEditingController();
  late final TextEditingController litterAuthority = TextEditingController();
  late final TextEditingController mobasharahDate = TextEditingController();
  late final TextEditingController dateOfBirth = TextEditingController();
  var isPicture = false.obs;
  RxString mobasharahDay = 'الأحد'.obs;
  final List<String> mobasharahDays = ['الأحد'];
  onChangePicture() {
    isPicture.value = !isPicture.value;
  }

  onChangeMobasharahDay(value) {
    mobasharahDay(value);
  }

  var socialStatues = ''.obs;
  updateSocialStatues(value) {
    socialStatues.value = value;
  }

  var gender = ''.obs;
  updateGender(value) {
    gender.value = value;
  }
}
