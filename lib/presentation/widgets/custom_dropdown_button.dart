import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomDropdownButton extends StatelessWidget {
  const CustomDropdownButton({
    Key? key,
    required this.label,
    required this.list,
    required this.item,
    required this.onChanged,
  }) : super(key: key);

  final String label;
  final List<String> list;
  final RxString item;
  final ValueChanged<String?> onChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.bold,
          ),
        ).paddingAll(5),
        Obx(
          () => Container(
            width: 200,
            height: 35,
            decoration: BoxDecoration(
              // color: Colors.grey,
              borderRadius: BorderRadius.circular(4),
              border: const Border.fromBorderSide(
                BorderSide(color: Colors.black, width: 1),
              ),
            ),
            child: DropdownButtonHideUnderline(
              child: DropdownButton(
                focusColor: Colors.white,
                padding: const EdgeInsets.symmetric(horizontal: 8),
                value: item.value,
                items: list
                    .map(
                      (item) => DropdownMenuItem(
                        value: item,
                        child: Text(item),
                      ),
                    )
                    .toList(),
                onChanged: onChanged,
              ),
            ),
          ).paddingSymmetric(horizontal: 3.0, vertical: 2.0),
        ),
      ],
    );
  }
}
