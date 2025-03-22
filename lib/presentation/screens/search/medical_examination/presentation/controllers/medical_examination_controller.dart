import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MedicalExaminationController extends GetxController {
  final TextEditingController name = TextEditingController();
  final TextEditingController id = TextEditingController();
  final TextEditingController jobType = TextEditingController();
  var selectedJobType = ''.obs;
}
