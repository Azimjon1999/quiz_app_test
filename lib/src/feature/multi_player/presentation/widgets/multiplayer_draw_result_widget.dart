import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/localization/words.dart';
import '../../../../core/routes/app_route_name.dart';
import '../../../../core/style/colors.dart';
import '../../../../core/style/images.dart';
import '../../../../core/style/text_style.dart';
import '../../../../core/widget/custom_box_big_widget.dart';
import '../../../single_player/presentation/widgets/single_quiz_title_widget.dart';
import '../../../single_player/presentation/widgets/single_result_bottom_widgets.dart';

class MultiplayerDrawResultWidget extends StatelessWidget {
  const MultiplayerDrawResultWidget({super.key});

  @override
  Widget build(BuildContext context) {

    int correctAnswer = 4;
    int inCorrectAnswer = 4;
    return Column(
      children: [
        SizedBox(height: 110.h),
        SingleQuizTitleWidget(
          title: Words.draw.tr(context),
        ),
        SizedBox(height: 110.h),
        Stack(
          alignment: const Alignment(0, -1.5),
          children: [
            CustomBoxBigWidget(
              padding:
              EdgeInsets.only(left: 20.w, right: 20.w, top: 60.h),
              height: 400.h,
              child: Column(
                children: [
                  Text(
                    Words.sTATISTICS.tr(context),
                    style: TextStyle(
                      color: AppColors.c0048B5,
                      fontSize: 36.sp,
                      fontFamily: 'IrishGrover',
                    ),
                  ),
                  SizedBox(height: 14.h),
                  Center(
                    child: Text(
                      textAlign: TextAlign.center,
                      Words.draw.tr(context),
                      style: AppTextStyle().titleMedium?.copyWith(fontSize: 26),
                    ),
                  ),
                  SizedBox(height: 15.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "Zikrulloh",
                        style: TextStyle(
                          color: AppColors.c7A7A7A,
                          fontSize: 24.sp,
                          fontFamily: 'IrishGrover',
                        ),
                      ),
                      Text(
                        '0',
                        style: TextStyle(
                          color: AppColors.c7A7A7A,
                          fontSize: 24.sp,
                          fontFamily: 'IrishGrover',
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "Azimjon",
                        style: AppTextStyle().titleMedium?.copyWith(color: AppColors.c7A7A7A, fontSize: 24.sp),
                      ),
                      Text(
                        '0',
                        style: AppTextStyle().titleMedium?.copyWith(color: AppColors.c7A7A7A, fontSize: 24.sp),
                      ),
                    ],
                  ),
                  SizedBox(height: 10.h),

                  // Statistic
                  const Divider(
                    color: AppColors.cD9D9D9,
                    height: 1,
                  ),
                  SizedBox(height: 10.h),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        Words.correctAnswer.tr(context),
                        style: TextStyle(
                          color: AppColors.c7A7A7A,
                          fontSize: 24.sp,
                          fontFamily: 'IrishGrover',
                        ),
                      ),
                      Text(
                        '$correctAnswer',
                        style: TextStyle(
                          color: AppColors.c7A7A7A,
                          fontSize: 24.sp,
                          fontFamily: 'IrishGrover',
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 10.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        Words.incorrectAnswer.tr(context),
                        style: TextStyle(
                          color: AppColors.c7A7A7A,
                          fontSize: 24.sp,
                          fontFamily: 'IrishGrover',
                        ),
                      ),
                      Text(
                        '$inCorrectAnswer',
                        style: TextStyle(
                          color: AppColors.c7A7A7A,
                          fontSize: 24.sp,
                          fontFamily: 'IrishGrover',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            AppImages.winIcon
          ],
        ),
        SizedBox(height: 80.h),
        SingleResultBottomWidgets(
          onTap1: () {
            context.go(AppRouteName.homePage);
          },
          onTap2: () {
            context.go(
                '${AppRouteName.homePage}${AppRouteName.multiPlayerPage}');
          },
        )
      ],
    );
  }
}
