import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EmpDegreesController extends GetxController {
  late final TextEditingController rank;
  late final TextEditingController category;
  late final TextEditingController salary;
  late final TextEditingController bonus;
  late final TextEditingController badalNaqel;
  late final TextEditingController categoryKey;
  late final TextEditingController degreeKey;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    rank = TextEditingController();
    category = TextEditingController();
    bonus = TextEditingController();
    salary = TextEditingController();
    badalNaqel = TextEditingController();
    categoryKey = TextEditingController();
    degreeKey = TextEditingController();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    rank.dispose();
    category.dispose();
    bonus.dispose();
    salary.dispose();
    badalNaqel.dispose();
    categoryKey.dispose();
    degreeKey.dispose();
  }

  clearCategorySearchFeild() {
    categoryKey.clear();
  }

  clearDegreeSearchFeild() {
    degreeKey.clear();
  }
}
