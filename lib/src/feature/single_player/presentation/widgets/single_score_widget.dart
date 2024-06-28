import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quiz_app/src/core/style/colors.dart';
import 'package:quiz_app/src/core/widget/custom_box_widget.dart';

class SingleScoreWidget extends StatelessWidget {
  final String score;
  const SingleScoreWidget({super.key, required this.score});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: const Alignment(0, -9),
      children: [
        CustomBoxWidget(
          width: 156.w,
          height: 80.h,
          child: Center(
            child: Text(
              score,
              style: TextStyle(
                fontFamily: 'IrishGrover',
                fontSize: 26.sp,
                color: AppColors.c0048B5,
              ),
            ),
          ),
        ),
        Container(
          width: 70.w,
          height: 70.h,
          color: AppColors.c0048B5,
        ),
      ],
    );
  }
}
