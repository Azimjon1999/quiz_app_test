import 'package:flutter/material.dart';
import 'package:quiz_app/src/core/style/colors.dart';
import 'package:quiz_app/src/core/style/images.dart';
import 'package:quiz_app/src/core/widget/custom_button_widget.dart';

class SingleResultBottomWidgets extends StatelessWidget {
  final VoidCallback onTap1;
  final VoidCallback onTap2;
  const SingleResultBottomWidgets(
      {super.key, required this.onTap1, required this.onTap2});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomButtonWidget(
            witdh: 68,
            height: 60,
            func: onTap1,
            buttonColor: AppColors.white,
            child: AppImages.close,
          ),
          CustomButtonWidget(
            witdh: 68,
            height: 60,
            func: onTap2,
            buttonColor: AppColors.white,
            child: AppImages.close,
          ),
        ],
      ),
    );
  }
}
