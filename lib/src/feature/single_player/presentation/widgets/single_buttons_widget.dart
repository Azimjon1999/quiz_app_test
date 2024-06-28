import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quiz_app/src/core/style/colors.dart';
import 'package:quiz_app/src/core/widget/custom_button_widget.dart';

class SingleButtonsWidget extends StatelessWidget {
  final VoidCallback onTap1;
  final VoidCallback onTap2;
  final VoidCallback onTap3;
  final VoidCallback onTap4;
  const SingleButtonsWidget({
    super.key,
    required this.onTap1,
    required this.onTap2,
    required this.onTap3,
    required this.onTap4,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomButtonWidget(
            buttonColor: AppColors.white,
            func: onTap1,
            child: Text(
              'Sport',
              style: TextStyle(color: AppColors.c0048B5, fontSize: 40.sp),
            ),
          ),
          SizedBox(height: 20.h),
          CustomButtonWidget(
            buttonColor: AppColors.white,
            func: onTap2,
            child: Text(
              'Cinema',
              style: TextStyle(color: AppColors.c0048B5, fontSize: 40.sp),
            ),
          ),
          SizedBox(height: 20.h),
          CustomButtonWidget(
            buttonColor: AppColors.white,
            func: onTap3,
            child: Text(
              'History',
              style: TextStyle(color: AppColors.c0048B5, fontSize: 40.sp),
            ),
          ),
          SizedBox(height: 20.h),
          CustomButtonWidget(
            buttonColor: AppColors.white,
            func: onTap4,
            child: Text(
              'Music',
              style: TextStyle(color: AppColors.c0048B5, fontSize: 40.sp),
            ),
          ),
        ],
      ),
    );
  }
}
