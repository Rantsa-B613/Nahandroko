import 'package:flutter/material.dart';
import 'package:nahandroko/constant.dart';

class EnterNewHabitBox extends StatelessWidget {
  final controller;
  final String hintText;
  final VoidCallback onSave;
  final VoidCallback onCancel;

  const EnterNewHabitBox({
    super.key,
    required this.controller,
    required this.onSave,
    required this.onCancel,
    required this.hintText,
});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: kLightColor,
      content: TextField(
        controller: controller,
        style: const TextStyle(color: Colors.black),
        decoration:  InputDecoration(
          hintText: hintText,
          hintStyle: const TextStyle(color: Colors.grey),
          enabledBorder:
            const OutlineInputBorder (borderSide: BorderSide(color: kYellowColor)),
          focusedBorder:
            const OutlineInputBorder (borderSide: BorderSide(color: kYellowColor)),
        ),
      ),
      actions: [
        MaterialButton(
          color: Colors.grey[200],
          onPressed: onSave,
          child: const Text(
            "Zay",
            style: TextStyle(color: Colors.black),
          ),
        ),
        MaterialButton(
          color: Colors.grey[200],
          onPressed: onCancel,
          child: const Text(
            "Tsia",
            style: TextStyle(color: Colors.black),
          ),
        ),
      ],
    );
  }
}
