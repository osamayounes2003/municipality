import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class WazefaController extends GetxController {
  late final TextEditingController job;
  late final TextEditingController jobId;
  @override
  void onInit() {
    // TODO: implement onInit
    job = TextEditingController();
    jobId = TextEditingController();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    jobId.dispose();
    job.dispose();
  }
}
