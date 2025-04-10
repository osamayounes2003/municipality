import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../core/functions/image_picker.dart';

class EmployeeBeanatWazaefAsaseaController extends GetxController {
  late final TextEditingController graduationDate = TextEditingController();
  var employeePhoto = ''.obs;
  var isPicture = false.obs;
  RxString jobDataType = 'موظف'.obs;
  RxString jobStatu = 'مشغولة'.obs;
  final List<String> jobDataTypes = ['موظف'];
  final List<String> jobStatus = ['مشغولة'];
  onChangeIsPicture() {
    isPicture.value = !isPicture.value;
  }

  onChangeJobDataType(value) {
    jobDataType(value);
  }

  onChangeJobDataStatu(value) {
    jobStatu(value);
  }

  void pickImage() async {
    final picker = WebImagePicker();
    final image = await picker.pickImage();

    if (image != null) {
      employeePhoto.value = image;
    }
  }
}
