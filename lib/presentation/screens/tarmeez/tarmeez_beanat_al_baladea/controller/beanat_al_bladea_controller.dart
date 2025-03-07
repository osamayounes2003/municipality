import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import '../../../../../core/functions/image_picker.dart';

class BeanatAlBaladeaController extends GetxController {
  final TextEditingController hijriController1 = TextEditingController();
  final TextEditingController hijriController2 = TextEditingController();
  var municipalitySymbol = ''.obs; // Using observable string for GetX

  void pickImage() async {
    final picker = WebImagePicker();
    final image = await picker.pickImage();

    if (image != null) {
      municipalitySymbol.value = image;
    }
  }
}
