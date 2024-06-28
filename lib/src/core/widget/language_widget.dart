import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quiz_app/src/core/style/colors.dart';
import 'package:quiz_app/src/core/widget/custom_button_widget.dart';

class LanguagesWidget extends StatelessWidget {
  final VoidCallback uzbekOnTap;
  final VoidCallback russinOnTap;
  final VoidCallback englishOnTap;
  const LanguagesWidget({
    super.key,
    required this.uzbekOnTap,
    required this.russinOnTap,
    required this.englishOnTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomButtonWidget(
          blurRadius: 16,
          padding: const EdgeInsets.symmetric(horizontal: 14),
          witdh: double.infinity,
          height: 74.h,
          buttonColor: AppColors.white,
          func: uzbekOnTap,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Uzbek',
                style: TextStyle(
                  color: AppColors.c0048B5,
                  fontFamily: 'IrishGrover',
                  fontSize: 36.sp,
                ),
              ),
              Container(
                height: 40.h,
                width: 40.w,
                decoration: const BoxDecoration(
                  color: AppColors.c0048B5,
                  shape: BoxShape.circle,
                ),
              )
            ],
          ),
        ),
        SizedBox(height: 20.h),
        CustomButtonWidget(
          blurRadius: 16,
          padding: const EdgeInsets.symmetric(horizontal: 14),
          witdh: double.infinity,
          height: 74.h,
          buttonColor: AppColors.white,
          func: englishOnTap,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Inglish',
                style: TextStyle(
                  color: AppColors.c0048B5,
                  fontFamily: 'IrishGrover',
                  fontSize: 36.sp,
                ),
              ),
              Container(
                height: 40.h,
                width: 40.w,
                decoration: const BoxDecoration(
                  color: AppColors.c0048B5,
                  shape: BoxShape.circle,
                ),
              )
            ],
          ),
        ),
        SizedBox(height: 20.h),
        CustomButtonWidget(
          blurRadius: 16.h,
          padding: const EdgeInsets.symmetric(horizontal: 14),
          witdh: double.infinity,
          height: 74.h,
          buttonColor: AppColors.white,
          func: russinOnTap,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Russian',
                style: TextStyle(
                  color: AppColors.c0048B5,
                  fontFamily: 'IrishGrover',
                  fontSize: 36.sp,
                ),
              ),
              Container(
                height: 40.h,
                width: 40.w,
                decoration: const BoxDecoration(
                  color: AppColors.c0048B5,
                  shape: BoxShape.circle,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
