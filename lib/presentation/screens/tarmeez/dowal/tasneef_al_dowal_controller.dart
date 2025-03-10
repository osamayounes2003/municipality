import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class TasneefAlDowalController extends GetxController {
  late final TextEditingController classificationId;
  late final TextEditingController country;
  late final TextEditingController category;
  @override
  void onInit() {
    classificationId = TextEditingController();
    country = TextEditingController();
    category = TextEditingController();
    super.onInit();
  }

  @override
  void onClose() {
    classificationId.dispose();
    country.dispose();
    category.dispose();
    super.onClose();
  }
}
