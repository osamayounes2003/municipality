import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:municipality/presentation/widgets/custom_text_feild.dart';

class DropdownTextField extends StatelessWidget {
  final String hintText;
  final String label;
  final double customHeight;
  final double customWidth;
  final List<String> items;
  final TextEditingController controller;
  final RxString selectedValue;
  const DropdownTextField({
    Key? key,
    required this.hintText,
    required this.items,
    required this.controller,
    required this.selectedValue,
    required this.label,
    required this.customHeight,
    required this.customWidth,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Obx(() {
          return CustomTextField(
              label: label,
              controller: controller..text = selectedValue.value,
              suffixIcon: const Icon(Icons.arrow_drop_down_sharp),
              enabled: true,
              onTap: () {
                _showDropdown(context);
              },
              customHeight: customHeight,
              customWidth: customWidth);
        }),
      ],
    );
  }

  void _showDropdown(BuildContext context) {
    Get.dialog(
      AlertDialog(
        title: Text(hintText),
        content: SizedBox(
          width: 100,
          height: Get.height,
          child: ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(items[index]),
                onTap: () {
                  selectedValue.value = items[index];
                  Get.back();
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
