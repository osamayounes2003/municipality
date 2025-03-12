import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TarmeezAlKisimController extends GetxController {
  late final TextEditingController sectionId;

  late final TextEditingController section;
  @override
  void onInit() {
    super.onInit();
    section = TextEditingController();
    sectionId = TextEditingController();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    sectionId.dispose();
    section.dispose();
  }
}
