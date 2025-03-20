import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class TafweedController extends GetxController {
  late final TextEditingController mosalsal;
  late final TextEditingController mawdoouh;
  late final TextEditingController day;
  late final TextEditingController employee;
  late final TextEditingController notes;
  @override
  void onInit() {
    // TODO: implement onInit
    mawdoouh = TextEditingController();
    mosalsal = TextEditingController();
    day = TextEditingController();
    employee = TextEditingController();
    notes = TextEditingController();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    mosalsal.dispose();
    mawdoouh.dispose();
    employee.dispose();
    notes.dispose();
    day.dispose();
  }
}
