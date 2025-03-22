import 'package:flutter/material.dart';
import 'package:municipality/core/extensions/widget_extension.dart';

class CustomPopupMenuButton extends StatelessWidget {
  final List<PopupMenuEntry<String>> items;
  final ValueChanged<String> onSelected;
  final String buttonText;

  const CustomPopupMenuButton({
    Key? key,
    required this.items,
    required this.onSelected,
    this.buttonText = 'Menu',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      onSelected: onSelected,
      itemBuilder: (BuildContext context) => items,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Text(buttonText),
      ),
    ).scrollDirection(Axis.vertical);
  }
}
