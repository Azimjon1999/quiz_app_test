import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quiz_app/src/core/style/colors.dart';
import 'package:quiz_app/src/core/widget/custom_box_big_widget.dart';

class SingleQuizTitleWidget extends StatelessWidget {
  final String title;
  const SingleQuizTitleWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: CustomBoxBigWidget(
        height: 64.h,
        width: double.infinity,
        backgroundColor: AppColors.c0048B5,
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              color: AppColors.white,
              fontFamily: 'IrishGrover',
              fontSize: 30.sp,
            ),
          ),
        ),
      ),
    );
  }
}
