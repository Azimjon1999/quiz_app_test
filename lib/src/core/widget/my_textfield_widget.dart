import 'package:flutter/material.dart';
import 'package:quiz_app/src/core/style/colors.dart';
import 'package:quiz_app/src/core/widget/custom_box_widget.dart';

class MyTextField extends StatelessWidget {
  final TextEditingController controller;
  final String text;
  final TextInputType type;

  const MyTextField({
    super.key,
    required this.text,
    required this.controller,
    this.type = TextInputType.text,
  });

  @override
  Widget build(BuildContext context) {
    return CustomBoxWidget(
      width: double.infinity,
      height: 64,
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      child: TextFormField(
        keyboardType: type,
        cursorColor: AppColors.c7A7A7A,
        controller: controller,
        onEditingComplete: () {
          FocusScope.of(context).nextFocus();
        },
        style: const TextStyle(
          fontSize: 14,
          fontFamily: 'IrishGrover',
        ),
        decoration: InputDecoration(
          label: Text(
            text,
            style: const TextStyle(
              color: AppColors.c7A7A7A,
              fontFamily: 'IrishGrover',
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(
              color: AppColors.c7A7A7A,
              width: 1,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(
              color: AppColors.black,
              width: 2,
            ),
          ),
        ),
      ),
    );
  }
}
