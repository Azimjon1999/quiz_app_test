import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:quiz_app/src/core/routes/app_route_name.dart';
import 'package:quiz_app/src/core/style/colors.dart';
import 'package:quiz_app/src/core/widget/appbar_leading_widget.dart';
import 'package:quiz_app/src/core/widget/custom_button_widget.dart';
import 'package:quiz_app/src/core/widget/scaffold_with_background_widget.dart';
import 'package:quiz_app/src/feature/single_player/presentation/widgets/single_quiz_quation_widget.dart';
import 'package:quiz_app/src/feature/single_player/presentation/widgets/single_quiz_title_widget.dart';
import 'package:quiz_app/src/feature/single_player/presentation/widgets/single_score_widget.dart';

class SingleQuiz extends StatelessWidget {
  final String theme;
  const SingleQuiz({super.key, required this.theme});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScaffoldWithBackgroundWidget(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22),
          child: Column(
            children: [
              SizedBox(height: 46.h),
              AppbarLeadingWidget(
                func: () {
                  context.pop();
                },
              ),
              SizedBox(height: 10.h),
              SingleQuizTitleWidget(
                title: theme,
              ),
              SizedBox(height: 56.h),
              const SingleScoreWidget(score: '1000'),
              SizedBox(height: 40.h),
              const SingleQuizQuationWidget(
                quationNumber: 6,
                quation: 'What is the capital city of India?',
              ),
              SizedBox(height: 20.h),
              CustomButtonWidget(
                padding: EdgeInsets.only(left: 20.w, top: 8.h, bottom: 8.h),
                buttonColor: AppColors.white,
                func: () {
                  context.push(
                    '${AppRouteName.homePage}${AppRouteName.singlePlayerPage}/${AppRouteName.singlePlayerQuiz}/${AppRouteName.singlePlayerQuizResult}',
                    extra: [21, 7, 3],
                  );
                },
                child: Row(
                  children: [
                    Text(
                      'A:',
                      style: TextStyle(
                        color: AppColors.c0048B5,
                        fontFamily: "IrishGrover",
                        fontSize: 35.sp,
                      ),
                    ),
                    Expanded(
                      child: Center(
                        child: Text(
                          'Laos',
                          style: TextStyle(
                            color: AppColors.c0048B5,
                            fontFamily: "IrishGrover",
                            fontSize: 35.sp,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
