import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quiz_app/src/core/style/text_style.dart';
import 'package:quiz_app/src/core/widget/custom_box_widget.dart';

class MultiplayerTitleWidget extends StatelessWidget {
  final String? titleLarge;
  final String? titleMedium;

   MultiplayerTitleWidget({super.key,this.titleLarge, this.titleMedium} );

  @override
  Widget build(BuildContext context) {
    return CustomBoxWidget(
      height: 175.h,
      width: 290.w,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              titleLarge??  '',
              style: AppTextStyle().titleLarge?.copyWith(fontSize: 30.sp),
            ),
            Text(
              titleMedium?? "",
              style: AppTextStyle().titleLarge,
            ),
          ],
        ),
      ),
    );
  }
}
