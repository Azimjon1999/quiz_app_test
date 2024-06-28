import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:quiz_app/src/core/localization/words.dart';
import 'package:quiz_app/src/core/routes/app_route_name.dart';
import 'package:quiz_app/src/core/style/colors.dart';
import 'package:quiz_app/src/core/widget/custom_box_big_widget.dart';
import 'package:quiz_app/src/core/widget/scaffold_with_background_widget.dart';
import 'package:quiz_app/src/feature/single_player/presentation/widgets/single_quiz_title_widget.dart';
import 'package:quiz_app/src/feature/single_player/presentation/widgets/single_result_bottom_widgets.dart';

class SingleResultPage extends StatelessWidget {
  final List<int> data;
  const SingleResultPage({
    super.key,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    final int score = data[0];
    final int correctAnswer = data[1];
    final int inCorrectAnswer = data[2];
    return Scaffold(
      body: ScaffoldWithBackgroundWidget(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22),
          child: Column(
            children: [
              SizedBox(height: 110.h),
              SingleQuizTitleWidget(
                title: Words.gREAT.tr(context),
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
                        Text(
                          '${Words.yourscore} $score',
                          style: TextStyle(
                            color: AppColors.c0048B5,
                            fontSize: 26.sp,
                            fontFamily: 'IrishGrover',
                          ),
                        ),
                        SizedBox(height: 30.h),

                        // Statistic
                        const Divider(
                          color: AppColors.c7A7A7A,
                          height: 1,
                        ),
                        SizedBox(height: 30.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              Words.correctAnswer.tr(context),
                              style: TextStyle(
                                color: AppColors.c2ED334,
                                fontSize: 24.sp,
                                fontFamily: 'IrishGrover',
                              ),
                            ),
                            Text(
                              '$correctAnswer',
                              style: TextStyle(
                                color: AppColors.c2ED334,
                                fontSize: 24.sp,
                                fontFamily: 'IrishGrover',
                              ),
                            ),
                          ],
                        ),
                        const Divider(
                          color: AppColors.c7A7A7A,
                          height: 1,
                        ),
                        SizedBox(height: 30.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              Words.incorrectAnswer.tr(context),
                              style: TextStyle(
                                color: AppColors.cFE3340,
                                fontSize: 24.sp,
                                fontFamily: 'IrishGrover',
                              ),
                            ),
                            Text(
                              '$inCorrectAnswer',
                              style: TextStyle(
                                color: AppColors.cFE3340,
                                fontSize: 24.sp,
                                fontFamily: 'IrishGrover',
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 30.h),
                        const Divider(
                          color: AppColors.c7A7A7A,
                          height: 1,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 130.w,
                    height: 130.h,
                    color: AppColors.c0048B5,
                  ),
                ],
              ),
              SizedBox(height: 80.h),
              SingleResultBottomWidgets(
                onTap1: () {
                  context.go(AppRouteName.homePage);
                },
                onTap2: () {
                  context.go(
                      '${AppRouteName.homePage}${AppRouteName.singlePlayerPage}');
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
