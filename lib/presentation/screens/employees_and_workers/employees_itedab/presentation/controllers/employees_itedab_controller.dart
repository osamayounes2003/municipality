import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EmployeesItedabController extends GetxController {
  late final TextEditingController mosalsal = TextEditingController();
  late final TextEditingController decisionNumber = TextEditingController();
  late final TextEditingController intedabAuthority = TextEditingController();
  late final TextEditingController mission = TextEditingController();
  late final TextEditingController hijriDecisionDate = TextEditingController();
  late final TextEditingController geoDecisionDate = TextEditingController();
  late final TextEditingController intedabDuration = TextEditingController();
  late final TextEditingController litterNumber = TextEditingController();
  late final TextEditingController hijriLitterDate = TextEditingController();

  late final TextEditingController geoLitterDate = TextEditingController();
  late final TextEditingController hijriStartIntedabDate =
      TextEditingController();
  late final TextEditingController geoStartIntedabDate =
      TextEditingController();
  late final TextEditingController hijriEndIntedabDate =
      TextEditingController();
  late final TextEditingController geoEndIntedabDate = TextEditingController();
  late final TextEditingController ticketPrice = TextEditingController();
  late final TextEditingController travelDistance = TextEditingController();
  late final TextEditingController categoryAmount = TextEditingController();
  RxString day = 'الأحد'.obs;
  RxString type = 'داخلي'.obs;
  RxString category = 'أ'.obs;
  RxString howToTravel = 'الطائرة'.obs;
  var isPicture = false.obs;
  var selectedCheckBoxValue = false.obs;

  onChangesCheckBoxValue() {
    selectedCheckBoxValue.value = !selectedCheckBoxValue.value;
  }

  var mablaghTaweedy = ''.obs;
  var badalNaqel = ''.obs;

  onChangedPicture() {
    isPicture.value = !isPicture.value;
  }

  void onChangeDay(value) {
    day(value);
  }

  void onChangeType(value) {
    type(value);
  }

  void onChangeCategory(value) {
    category(value);
  }

  void onChangeVehicle(value) {
    howToTravel(value);
  }

  final List<String> days = ['الأحد'];
  final List<String> types = ['داخلي'];
  final List<String> categories = ['أ'];
  final List<String> vehicles = ['الطائرة'];

  updateBadalNaqel(value) {
    badalNaqel.value = value;
  }

  updateMablaghTaweedy(value) {
    mablaghTaweedy.value = value;
  }
}
