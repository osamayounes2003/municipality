import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class EmployeesSearchController extends GetxController {
  final TextEditingController employee = TextEditingController();
  final TextEditingController job = TextEditingController();
  final TextEditingController part = TextEditingController();
  final TextEditingController degree = TextEditingController();
  final TextEditingController jobStatus = TextEditingController();
  final TextEditingController name = TextEditingController();
  final TextEditingController recordId = TextEditingController();
  final TextEditingController rank = TextEditingController();
  final TextEditingController jobType = TextEditingController();
  var selectedJobType = ''.obs;
  var selectedJobStatus = ''.obs;
}
