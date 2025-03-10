import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class TarmeezGenseatController extends GetxController {
  late final TextEditingController nationalityId;
  late final TextEditingController nationality;
  @override
  void onInit() {
    super.onInit();
    // TODO: implement onInit
    nationality = TextEditingController();
    nationalityId = TextEditingController();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    nationalityId.dispose();
    nationality.dispose();
  }
}
