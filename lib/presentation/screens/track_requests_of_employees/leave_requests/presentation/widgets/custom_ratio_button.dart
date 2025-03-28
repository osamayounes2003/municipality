import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:municipality/core/constants/app_colors.dart';
import 'package:municipality/core/extensions/widget_extension.dart';
import 'package:municipality/presentation/screens/track_requests_of_employees/leave_requests/presentation/controllers/leave_requests_controller.dart';

class CustomRadioButton extends StatelessWidget {
  final String value;
  final String label;

  const CustomRadioButton({
    Key? key,
    required this.value,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final LeaveRequestsController controller =
        Get.put(LeaveRequestsController());
    return GetBuilder<LeaveRequestsController>(
      builder: (leaveRequestsController) {
        return Row(
          children: [
            Radio(
              value: value,
              groupValue: leaveRequestsController.orderType,
              onChanged: (String? value) {
                leaveRequestsController.setOrderType(value!);
                print(value);
              },
              activeColor: AppColors.blueAccent,
            ),
            const SizedBox(
              width: 20,
            ),
            Text(label)
          ],
        ).onTap(() {
          leaveRequestsController.setOrderType(value.toString());
          print(value);
        });
      },
    );
  }
}
