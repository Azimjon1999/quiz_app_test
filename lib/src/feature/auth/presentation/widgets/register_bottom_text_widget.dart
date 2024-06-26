import 'package:flutter/material.dart';
import 'package:quiz_app/src/core/style/colors.dart';

class RegisterBottomTextWidget extends StatelessWidget {
  final VoidCallback onTap;
  const RegisterBottomTextWidget({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: const Text(
        'Already have account ?',
        style: TextStyle(
          fontSize: 18,
          color: AppColors.white,
          fontFamily: 'IrishGrover',
        ),
      ),
    );
  }
}
