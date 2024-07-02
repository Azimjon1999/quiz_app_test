import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quiz_app/src/feature/profile/presentation/widgets/profile_history_widget.dart';
import 'package:quiz_app/src/feature/profile/presentation/widgets/profile_reyting_widget.dart';
import '../../../../core/widget/custom_box_big_widget.dart';

class ProfilePageViewWidget extends StatelessWidget {
  final PageController controller;
  Function (int ) onPageChanged;
   ProfilePageViewWidget({super.key, required this.controller, required this.onPageChanged});

  @override
  Widget build(BuildContext context) {

    return  Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.h),
      child: CustomBoxBigWidget(
          width: double.infinity,
          height: 450.h,

          child: PageView(
            controller: controller,
            onPageChanged: onPageChanged,
            children:  [
           const ProfileHistoryWidget(),
              ProfileReytingWidget()
            ],

          )
      ),
    );
  }
}
