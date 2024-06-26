import 'package:flutter/material.dart';
import 'package:quiz_app/src/core/style/colors.dart';
import 'package:quiz_app/src/core/widget/custom_box_widget.dart';

class AppTitleWidget extends StatelessWidget {
  const AppTitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBoxWidget(
      height: 174,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Quiz',
            style: TextStyle(
              fontSize: 75,
              color: AppColors.c0048B5,
              fontFamily: 'IrishGrover',
            ),
          ),
          Text(
            'First',
            style: TextStyle(
              fontSize: 35,
              color: AppColors.c0048B5,
              fontFamily: 'IrishGrover',
            ),
          ),
        ],
      ),
    );
  }
}
