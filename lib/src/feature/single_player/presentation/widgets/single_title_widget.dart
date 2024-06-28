import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quiz_app/src/core/localization/words.dart';
import 'package:quiz_app/src/core/style/colors.dart';
import 'package:quiz_app/src/core/widget/custom_box_big_widget.dart';

class SingleTitleWidget extends StatelessWidget {
  const SingleTitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: CustomBoxBigWidget(
        height: 64.h,
        width: double.infinity,
        backgroundColor: AppColors.c0048B5,
        child: Center(
          child: Text(
            Words.chooseQuiz.tr(context) ,
            style: TextStyle(
              color: AppColors.white,
              fontFamily: 'IrishGrover',
              fontSize: 30.sp,
            ),
          ),
        ),
      ),
    );
  }
}
