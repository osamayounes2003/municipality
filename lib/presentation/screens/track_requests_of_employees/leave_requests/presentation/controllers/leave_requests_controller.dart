import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LeaveRequestsController extends GetxController {
  final TextEditingController employee = TextEditingController();
  final TextEditingController gateType = TextEditingController();
  final TextEditingController orderId = TextEditingController();
  final TextEditingController transferredBalance = TextEditingController();
  final TextEditingController date = TextEditingController();
  final TextEditingController peopleConcernedWithDecision =
      TextEditingController();
  final TextEditingController reasonForRejection = TextEditingController();

  var selectedGateType = ''.obs;
  var isCredentials = false.obs;
  var rejectionData = false.obs;
  var selectedRatioButton = "".obs;
  var _orderType = ''.obs;
  updateOrderTypeValue(value) {
    selectedRatioButton.value = value;
  }
}
