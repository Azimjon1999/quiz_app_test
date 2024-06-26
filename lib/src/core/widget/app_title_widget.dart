import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quiz_app/src/core/style/colors.dart';
import 'package:quiz_app/src/core/widget/custom_box_widget.dart';

class AppTitleWidget extends StatelessWidget {
  const AppTitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBoxWidget(
      height: 175.h,
      width: 290.w,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Quiz',
            style: TextStyle(
              fontSize: 75.h,
              color: AppColors.c0048B5,
              fontFamily: 'IrishGrover',
            ),
          ),
          Text(
            'First',
            style: TextStyle(
              fontSize: 45.h,
              color: AppColors.c0048B5,
              fontFamily: 'IrishGrover',
            ),
          ),
        ],
      ),
    );
  }
}
