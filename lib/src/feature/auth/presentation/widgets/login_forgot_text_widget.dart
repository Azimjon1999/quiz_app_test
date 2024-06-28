import 'package:flutter/material.dart';
import 'package:quiz_app/src/core/localization/words.dart';
import 'package:quiz_app/src/core/style/colors.dart';

class LoginForgotTextWidget extends StatelessWidget {
  final VoidCallback onTap;
  const LoginForgotTextWidget({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: InkWell(
        onTap: onTap,
        child:  Text(
          textAlign: TextAlign.right,
          Words.forgotPassword.tr(context),
          style: const TextStyle(
            fontSize: 14,
            color: AppColors.white,
            fontFamily: 'IrishGrover',
          ),
        ),
      ),
    );
  }
}
