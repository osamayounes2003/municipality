import 'dart:html' as html;
import 'package:get/get.dart';

class ImagePickerController extends GetxController {
  var imageUrl = ''.obs;
  void pickImage() async {
    final html.FileUploadInputElement uploadInput = html.FileUploadInputElement();
    uploadInput.accept = 'image/*';
    uploadInput.click();

    uploadInput.onChange.listen((e) async {
      final files = uploadInput.files;
      if (files!.isEmpty) return;

      final reader = html.FileReader();
      reader.readAsDataUrl(files[0]);
      reader.onLoadEnd.listen((e) {
        imageUrl.value = reader.result as String;
      });
    });
  }}
