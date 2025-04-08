import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class EmployeesDissentController extends GetxController {
  late final TextEditingController moslsal = TextEditingController();
  late final TextEditingController startDate = TextEditingController();
  late final TextEditingController endate = TextEditingController();
  late final TextEditingController dissentReport = TextEditingController();
  RxString dissentType = 'لفت نظر'.obs;
  final List<String> dissentTypes = ["لفت نظر"];
  var isPicture = false.obs;
  onChangedPicture() {
    isPicture.value = !isPicture.value;
  }
}
