import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class BadalController extends GetxController {
  late final TextEditingController id;
  late final TextEditingController rank;
  late final TextEditingController internal;
  late final TextEditingController categoryA;
  late final TextEditingController categoryB;
  late final TextEditingController categoryC;
  late final TextEditingController mortafeaaMaeshaa;

  @override
  void onInit() {
    super.onInit();

    id = TextEditingController();
    rank = TextEditingController();
    internal = TextEditingController();
    categoryA = TextEditingController();
    categoryB = TextEditingController();
    categoryC = TextEditingController();
    mortafeaaMaeshaa = TextEditingController();
  }

  @override
  void onClose() {
    id.dispose();
    rank.dispose();
    internal.dispose();
    categoryA.dispose();
    categoryB.dispose();
    categoryC.dispose();
    mortafeaaMaeshaa.dispose();
    super.onClose();
  }
}
