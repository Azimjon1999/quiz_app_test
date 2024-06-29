import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:quiz_app/src/core/style/colors.dart';
import 'package:quiz_app/src/core/widget/appbar_leading_widget.dart';
import 'package:quiz_app/src/core/widget/custom_button_widget.dart';
import 'package:quiz_app/src/core/widget/scaffold_with_background_widget.dart';
import 'package:quiz_app/src/feature/multi_player/presentation/widgets/multiplayer_user_box.dart';
import 'package:quiz_app/src/feature/single_player/presentation/widgets/single_quiz_quation_widget.dart';

import '../../controller/multiplayer_controller.dart';

class MultiplayerQuizPage extends StatelessWidget {

  const MultiplayerQuizPage({super.key,});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<MultiPlayerPageController>(context);
    return Scaffold(
      body: ScaffoldWithBackgroundWidget(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22),
          child: Column(
            children: [
              SizedBox(height: 46.h),
              AppbarLeadingWidget(
                func: () {
provider.navigateToMultiPlayerPage(context);                },
              ),
              SizedBox(height: 20.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MultiplayerUserBox(name: "Zikrulloh", id: "00000001"),
                  MultiplayerUserBox(name: "Azimjon", id: "00000002"),
                ],
              ),
              SizedBox(height: 60.h),
              const SingleQuizQuationWidget(
                quationNumber: 6,
                quation: 'What is the capital city of India?',
              ),
              SizedBox(height: 20.h),
              CustomButtonWidget(
                padding: EdgeInsets.only(left: 20.w, top: 8.h, bottom: 8.h),
                buttonColor: AppColors.white,
                func: () {
                provider.navigateToMultiPlayerResult(context);
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
