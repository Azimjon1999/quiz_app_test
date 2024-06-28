import 'package:flutter/material.dart';
import 'package:quiz_app/src/core/style/colors.dart';
import 'package:quiz_app/src/core/style/images.dart';
import 'package:quiz_app/src/core/widget/custom_button_widget.dart';

class AppbarLeadingWidget extends StatelessWidget {
  final VoidCallback func;
  const AppbarLeadingWidget({super.key, required this.func});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      alignment: Alignment.centerLeft,
      child: CustomButtonWidget(
        width: 68,
        height: 60,
        func: func,
        buttonColor: AppColors.white,
        child: AppImages.back,
      ),
    );
  }
}
