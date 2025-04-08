import 'package:flutter/material.dart';
import 'package:get/get.dart';

class KharijController extends GetxController {
  final TextEditingController mosalsal = TextEditingController();
  final TextEditingController part = TextEditingController();
  final TextEditingController qararNum = TextEditingController();
  final TextEditingController hijriQararDate = TextEditingController();
  final TextEditingController geoQararDate = TextEditingController();
  final TextEditingController mission = TextEditingController();
  final TextEditingController khitamNum = TextEditingController();
  final TextEditingController khitabDate = TextEditingController();
  final TextEditingController geoKhitabDate = TextEditingController();
  final TextEditingController hijriStartDateKharij = TextEditingController();
  final TextEditingController geoStartDateKharij = TextEditingController();
  final TextEditingController hijriEndDateKharij = TextEditingController();
  final TextEditingController geoEndDateKharij = TextEditingController();
  final TextEditingController day = TextEditingController();
  final TextEditingController dayNum = TextEditingController();
  final TextEditingController hoursNumRate = TextEditingController();
  final List<String> days = [
    'الأحد',
    "الاثنين",
    "الثلاثاء",
    "الاربعاء",
    "الخميس",
    "الجمعة",
    "السبت"
  ];
  RxString selectedDay = 'الأحد'.obs;
  onChangedDay(String? value) {
    selectedDay(value!);
  }

  var isEidFutur = false.obs;
  var isEidAdhaa = false.obs;
  var isPicture = false.obs;

  void onChangedEidFutur() {
    isEidFutur.value = !isEidFutur.value;
  }

  void onChangedEidAdhaa() {
    isEidAdhaa.value = !isEidAdhaa.value;
  }

  void onChangedPicture() {
    isPicture.value = !isPicture.value;
  }
}
