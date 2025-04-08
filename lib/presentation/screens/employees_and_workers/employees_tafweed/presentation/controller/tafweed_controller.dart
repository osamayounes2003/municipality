import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class EmployeesTafweedController extends GetxController {
  late final TextEditingController mosalsal = TextEditingController();
  late final TextEditingController mawdoouh = TextEditingController();
  late final TextEditingController day = TextEditingController();
  late final TextEditingController employee = TextEditingController();
  late final TextEditingController notes = TextEditingController();
  late final TextEditingController startDate = TextEditingController();
  late final TextEditingController endDate = TextEditingController();
  var selectedDay = ''.obs;
}
