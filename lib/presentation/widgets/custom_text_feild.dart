import 'package:flutter/material.dart';
import 'package:municipality/core/constants/app_colors.dart';

class CustomTextField extends StatelessWidget {
  final String label;
  final String? hint;
  final double customHeight;
  final bool obscureText;
  final double customWidth;
  final TextEditingController? controller;
  final Widget? suffixIcon;

  CustomTextField({
    Key? key,
    required this.label,
    this.obscureText = false,
    this.controller, // Ensure controller is passed
    required this.customHeight,
    required this.customWidth,
    this.hint,
    this.suffixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
          Container(
            width: customWidth,
            height: customHeight,
            child: TextField(
              controller: controller,
              maxLines: null,
              style: const TextStyle(fontSize: 10, color: AppColors.black),
              obscureText: obscureText,
              decoration: InputDecoration(
                suffixIcon: suffixIcon,
                hintText: hint,
                border: InputBorder.none,
                contentPadding: const EdgeInsets.all(5),
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue, width: 2.0),
                ),
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black, width: 1.0),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
