import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quiz_app/src/core/style/colors.dart';
import 'package:quiz_app/src/core/style/images.dart';
import 'package:quiz_app/src/core/widget/custom_button_widget.dart';

class HomeLeadingWidget extends StatelessWidget {
  final VoidCallback onTap;

  const HomeLeadingWidget({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      alignment: Alignment.centerLeft,
      child: CustomButtonWidget(
        width: 68,
        height: 60,
        func: onTap,
        buttonColor: AppColors.white,
        child: Icon(
          Icons.menu_rounded,
          size: 40.w,
        ),
      ),
    );
  }
}
