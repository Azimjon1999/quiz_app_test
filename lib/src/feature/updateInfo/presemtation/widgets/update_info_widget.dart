import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quiz_app/src/core/style/colors.dart';
import 'package:quiz_app/src/core/widget/custom_box_widget.dart';

class UpdateInfoWidget extends StatelessWidget {
  final String userName;
  final String email;

  const UpdateInfoWidget({
    super.key,
    required this.userName,
    required this.email,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: CustomBoxWidget(
        height: 130.h,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'User name',
              style: TextStyle(fontSize: 14.sp, fontFamily: 'IrishGrover', color: AppColors.c0048B5, decoration: TextDecoration.none),
            ),
            Text(
              userName,
              style: TextStyle(fontSize: 22.sp, fontFamily: 'IrishGrover', color: AppColors.c0048B5, decoration: TextDecoration.none),
            ),
            SizedBox(height: 16.h),
            Text(
              'Email Adress',
              style: TextStyle(fontSize: 14.sp, fontFamily: 'IrishGrover', color: AppColors.c0048B5, decoration: TextDecoration.none),
            ),
            Text(
              email,
              style: TextStyle(fontSize: 22.sp, fontFamily: 'IrishGrover', color: AppColors.c0048B5, decoration: TextDecoration.none),
            ),
          ],
        ),
      ),
    );
  }
}
