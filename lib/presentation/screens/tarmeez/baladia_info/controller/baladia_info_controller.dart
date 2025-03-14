import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import '../../../../../core/functions/image_picker.dart';

class BaladiaInfoController extends GetxController {
  late final TextEditingController tareekhBedaeaIterarea;
  late final TextEditingController tareekhNehaeaIterarea;
  late final TextEditingController municipality;
  late final TextEditingController mayor;
  late final TextEditingController deputyMayor;
  late final TextEditingController modeerIdaraShoonMaliaIdarea;
  late final TextEditingController modeerShoonMawadafeen;
  late final TextEditingController modakek;
  late final TextEditingController modeerIdaraShoonMalia;
  late final TextEditingController modeerShoonMalia;
  late final TextEditingController mowazafMokhtas;
  late final TextEditingController mowazafMokhtasMosaed;
  late final TextEditingController badalGhalaaMaeshaa;
  late final TextEditingController kisimHarakaSeana;
  late final TextEditingController baladeaIPAN;

  var municipalitySymbol = ''.obs;

  void pickImage() async {
    final picker = WebImagePicker();
    final image = await picker.pickImage();

    if (image != null) {
      municipalitySymbol.value = image;
    }
  }

  @override
  void onInit() {
    tareekhBedaeaIterarea = TextEditingController();
    tareekhNehaeaIterarea = TextEditingController();
    municipality = TextEditingController();
    mayor = TextEditingController();
    deputyMayor = TextEditingController();
    modeerIdaraShoonMaliaIdarea = TextEditingController();
    modeerShoonMawadafeen = TextEditingController();
    modakek = TextEditingController();
    modeerIdaraShoonMalia = TextEditingController();
    mowazafMokhtas = TextEditingController();
    mowazafMokhtasMosaed = TextEditingController();
    badalGhalaaMaeshaa = TextEditingController();
    kisimHarakaSeana = TextEditingController();
    modeerShoonMalia = TextEditingController();
    baladeaIPAN = TextEditingController();
    super.onInit();
  }

  @override
  void onClose() {
    tareekhBedaeaIterarea.dispose();
    tareekhNehaeaIterarea.dispose();
    municipality.dispose();
    mayor.dispose();
    deputyMayor.dispose();
    modeerIdaraShoonMaliaIdarea.dispose();
    modeerShoonMawadafeen.dispose();
    modakek.dispose();
    modeerIdaraShoonMalia.dispose();
    mowazafMokhtas.dispose();
    mowazafMokhtasMosaed.dispose();
    badalGhalaaMaeshaa.dispose();
    kisimHarakaSeana.dispose();
    modeerShoonMalia.dispose();
    baladeaIPAN.dispose();
    super.onClose();
  }
}
