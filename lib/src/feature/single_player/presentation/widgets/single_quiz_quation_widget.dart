import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quiz_app/src/core/style/colors.dart';
import 'package:quiz_app/src/core/widget/custom_box_big_widget.dart';

class SingleQuizQuationWidget extends StatelessWidget {
  final int quationNumber;
  final String quation;
  const SingleQuizQuationWidget(
      {super.key, required this.quationNumber, required this.quation});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: CustomBoxBigWidget(
        height: 180.h,
        width: double.infinity,
        padding: const EdgeInsets.all(14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Quations $quationNumber/10',
              style: TextStyle(
                fontSize: 20.sp,
                color: AppColors.c0048B5,
                fontFamily: 'IrishGrover',
              ),
            ),
            SizedBox(height: 10.h),
            Text(
              quation,
              textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: 30.sp,
                color: AppColors.c0048B5,
                fontFamily: 'IrishGrover',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
