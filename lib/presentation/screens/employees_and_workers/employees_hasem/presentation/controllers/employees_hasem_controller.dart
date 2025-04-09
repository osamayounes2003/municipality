import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class EmployeesHasemController extends GetxController {
  late final TextEditingController mosalsal = TextEditingController();
  late final TextEditingController startHasemDate = TextEditingController();
  late final TextEditingController endHasemDate = TextEditingController();
  late final TextEditingController decisionNumber = TextEditingController();
  late final TextEditingController decisionDate = TextEditingController();
  late final TextEditingController monthSummary = TextEditingController();
  late final TextEditingController monthSummaryYear = TextEditingController();
  late final TextEditingController monthOfHasem = TextEditingController();
  late final TextEditingController monthOfHasemyYear = TextEditingController();
  late final TextEditingController basedOnLetter = TextEditingController();
  var isPicture = false.obs;
  var selectedRadioListTileValue = ''.obs;
  onChangedPicture() {
    isPicture.value = !isPicture.value;
  }

  updateRadioListTileValue(value) {
    selectedRadioListTileValue.value = value;
  }
}
