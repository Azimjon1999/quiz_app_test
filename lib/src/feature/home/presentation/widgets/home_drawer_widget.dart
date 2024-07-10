import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quiz_app/src/core/localization/words.dart';
import 'package:quiz_app/src/core/style/colors.dart';
import 'package:quiz_app/src/core/style/images.dart';

class HomeDrawerWidget extends StatelessWidget {
  final VoidCallback languageOnTap;
  final VoidCallback chahgeInfoOnTap;
  final VoidCallback logOutOnTap;
  const HomeDrawerWidget({
    super.key,
    required this.languageOnTap,
    required this.chahgeInfoOnTap,
    required this.logOutOnTap,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Padding(
                padding: EdgeInsets.only(
                  top: 90.h,
                  bottom: 45.w,
                ),
                child: Column(
                  children: [
                    AppImages.userBlueIcon,
                    SizedBox(height: 15.h),
                    Text(
                      Words.userName.tr(context),
                      style: const TextStyle(
                        fontSize: 28,
                        fontFamily: 'IrishGrover',
                        color: AppColors.c0048B5,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Divider(
              height: 1,
              color: AppColors.c7A7A7A,
            ),
            SizedBox(height: 10.sp),
            MaterialButton(
              onPressed: languageOnTap,
              minWidth: double.infinity,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  Words.language.tr(context),
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 26.sp,
                    fontFamily: 'IrishGrover',
                    color: AppColors.c0048B5,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.h),
            const Divider(
              height: 1,
              color: AppColors.c7A7A7A,
            ),
            SizedBox(height: 10.h),
            MaterialButton(
              onPressed: chahgeInfoOnTap,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  Words.changeInfo.tr(context),
                  style: TextStyle(
                    fontSize: 26.sp,
                    fontFamily: 'IrishGrover',
                    color: AppColors.c0048B5,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.h),
            const Divider(
              height: 1,
              color: AppColors.c7A7A7A,
            ),
            SizedBox(height: 360.h),
            MaterialButton(
              onPressed: logOutOnTap,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  Words.logOut.tr(context),
                  style: TextStyle(
                    fontSize: 26.sp,
                    fontFamily: 'IrishGrover',
                    color: AppColors.cFE3340,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
