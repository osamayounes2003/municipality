import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:municipality/core/constants/app_colors.dart';

class CustomTextFeildWithList extends StatelessWidget {
  final String label;
  final List<String> items;
  final String? selectedItem;
  final Function(String?)? onChanged;

  CustomTextFeildWithList({
    Key? key,
    required this.label,
    required this.items,
    this.selectedItem,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 3.0, vertical: 2.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(5),
                child: Text(
                  label,
                  style: const TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              // DropdownButton
              SizedBox(
                width: constraints.maxWidth,
                child: DropdownButton<String>(
                  value: selectedItem,
                  hint: Text('اختر ${label.toLowerCase()}'),
                  isExpanded: true,
                  onChanged: onChanged,
                  underline: Container(
                    height: 1,
                    color: AppColors.black,
                  ),
                  items: items.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(
                        value,
                        style: const TextStyle(fontSize: 10, color: AppColors.black),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}