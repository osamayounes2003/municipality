import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../core/functions/image_picker.dart';

class EmployeeBeanatWazaefAsaseaController extends GetxController {
  late final TextEditingController employeeNumber = TextEditingController();
  late final TextEditingController graduationDate = TextEditingController();
  late final TextEditingController updateEmployeeNumber =
      TextEditingController();
  late final TextEditingController jobData = TextEditingController();
  late final TextEditingController rank = TextEditingController();
  late final TextEditingController degree1 = TextEditingController();
  late final TextEditingController degree2 = TextEditingController();
  late final TextEditingController jobNumber = TextEditingController();
  late final TextEditingController jobBadlat = TextEditingController();
  late final TextEditingController salary = TextEditingController();
  late final TextEditingController badalNaqel = TextEditingController();
  late final TextEditingController alawahDawrea = TextEditingController();
  late final TextEditingController badalIntedabKhareje =
      TextEditingController();
  late final TextEditingController badalIntedabDakhele =
      TextEditingController();
  late final TextEditingController jobTitle1 = TextEditingController();
  late final TextEditingController jobTitle2 = TextEditingController();
  late final TextEditingController ramzTasnifi = TextEditingController();

  late final TextEditingController part1 = TextEditingController();
  late final TextEditingController part2 = TextEditingController();
  late final TextEditingController shaghlWazefaDate = TextEditingController();
  late final TextEditingController employee = TextEditingController();
  late final TextEditingController nationality1 = TextEditingController();
  late final TextEditingController nationality2 = TextEditingController();
  late final TextEditingController recordNumber = TextEditingController();
  late final TextEditingController iqazatMosagalah = TextEditingController();
  late final TextEditingController hafezahNumber = TextEditingController();
  late final TextEditingController makanAlsodor = TextEditingController();
  late final TextEditingController sodorDate = TextEditingController();
  late final TextEditingController dateOfBirth = TextEditingController();
  late final TextEditingController birthDate = TextEditingController();
  late final TextEditingController serviceStartDate = TextEditingController();
  late final TextEditingController scientificInstitution =
      TextEditingController();
  late final TextEditingController academicEducation = TextEditingController();
  late final TextEditingController address = TextEditingController();
  late final TextEditingController phone = TextEditingController();
  late final TextEditingController assignedWork = TextEditingController();
  late final TextEditingController workCardNumber = TextEditingController();
  late final TextEditingController cardSodorDate = TextEditingController();
  late final TextEditingController loanStartDate = TextEditingController();
  late final TextEditingController loanEndDate = TextEditingController();
  late final TextEditingController installment = TextEditingController();
  late final TextEditingController amount = TextEditingController();
  late final TextEditingController takaoudMouad = TextEditingController();
  late final TextEditingController agriculturalBank = TextEditingController();
  late final TextEditingController harmOrInfection = TextEditingController();
  late final TextEditingController bankOfTasleef = TextEditingController();
  late final TextEditingController contractNumberOfbankTasleef =
      TextEditingController();
  late final TextEditingController other1 = TextEditingController();
  late final TextEditingController realEstateBank = TextEditingController();
  late final TextEditingController contractOfrealEstateBank =
      TextEditingController();
  late final TextEditingController other2 = TextEditingController();
  late final TextEditingController khitabTareefAuthor = TextEditingController();
  late final TextEditingController placeOfBirth = TextEditingController();
  late final TextEditingController healthInsurance = TextEditingController();
  var employeePhoto = ''.obs;
  var isPicture = false.obs;
  var saned = false.obs;
  RxString jobDataType = 'موظف'.obs;
  RxString jobStatu = 'مشغولة'.obs;
  var nationalityRadoiListTileValue = ''.obs;
  onChangeNationalityRadoiListTileValue(value) {
    nationalityRadoiListTileValue.value = value;
  }

  final List<String> jobDataTypes = ['موظف'];
  final List<String> jobStatus = ['مشغولة'];
  onChangeIsPicture() {
    isPicture.value = !isPicture.value;
  }

  onChangeSaned() {
    saned.value = !saned.value;
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
