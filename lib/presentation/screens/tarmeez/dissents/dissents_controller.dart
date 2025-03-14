import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class DissentsController extends GetxController {
  late final TextEditingController violacity;
  late final TextEditingController violacityId;
  @override
  void onInit() {
    // TODO: implement onInit
    violacity = TextEditingController();
    violacityId = TextEditingController();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    violacityId.dispose();
    violacity.dispose();
  }
}
