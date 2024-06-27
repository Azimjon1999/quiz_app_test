import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quiz_app/src/core/style/colors.dart';
import 'package:quiz_app/src/core/widget/app_title_widget.dart';
import 'package:quiz_app/src/core/widget/custom_button_widget.dart';

class HomeBodyWidgets extends StatelessWidget {
  final VoidCallback onTap1;
  final VoidCallback onTap2;
  const HomeBodyWidgets({super.key, required this.onTap1, required this.onTap2});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(height: 140.h),
          const AppTitleWidget(),
          SizedBox(height: 80.h),
          CustomButtonWidget(
            buttonColor: AppColors.white,
            func: () {},
            child: const Text(
              'Single Player',
              style: TextStyle(
                fontSize: 30,
                color: AppColors.c0048B5,
                fontFamily: 'IrishGrover',
              ),
            ),
          ),
          const SizedBox(height: 22),
          CustomButtonWidget(
            buttonColor: AppColors.white,
            func: () {},
            child: const Text(
              'Multi Player',
              style: TextStyle(
                fontSize: 30,
                color: AppColors.c0048B5,
                fontFamily: 'IrishGrover',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
