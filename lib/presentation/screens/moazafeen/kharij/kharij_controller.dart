import 'package:flutter/material.dart';
import 'package:get/get.dart';

class KharijController extends GetxController {
  late final TextEditingController mosalsal;
  late final TextEditingController part;
  late final TextEditingController qararNum;
  late final TextEditingController qararDate;
  late final TextEditingController mission;
  late final TextEditingController khitamNum;
  late final TextEditingController khitabDate;
  late final TextEditingController startDateKharij;
  late final TextEditingController endDateKharij;
  late final TextEditingController day;
  late final TextEditingController dayNum;
  late final TextEditingController hoursNumRate;
  @override
  void onInit() {
    super.onInit();

    mosalsal = TextEditingController();
    part = TextEditingController();
    qararNum = TextEditingController();
    qararDate = TextEditingController();
    mission = TextEditingController();
    khitamNum = TextEditingController();
    khitabDate = TextEditingController();
    startDateKharij = TextEditingController();
    endDateKharij = TextEditingController();
    day = TextEditingController();
    dayNum = TextEditingController();
    hoursNumRate = TextEditingController();
  }

  @override
  void onClose() {
    mosalsal.dispose();
    part.dispose();
    qararNum.dispose();
    qararDate.dispose();
    mission.dispose();
    khitamNum.dispose();
    khitabDate.dispose();
    startDateKharij.dispose();
    endDateKharij.dispose();
    day.dispose();
    dayNum.dispose();
    hoursNumRate.dispose();

    super.onClose();
  }
}
