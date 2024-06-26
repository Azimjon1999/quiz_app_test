import 'package:flutter/material.dart';
import 'package:quiz_app/src/core/style/colors.dart';

class LoginBottonTextWidget extends StatelessWidget {
  final VoidCallback onTap;
  const LoginBottonTextWidget({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: const Text(
        'Don’t have an account ?',
        style: TextStyle(
          fontSize: 18,
          color: AppColors.white,
          fontFamily: 'IrishGrover',
        ),
      ),
    );
  }
}
