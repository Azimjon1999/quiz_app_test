import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/widget/custom_box_big_widget.dart';
import 'multiplayer_reyting_widget.dart';

class MultiplayerLeaderboardWidget extends StatelessWidget {
  const MultiplayerLeaderboardWidget({super.key});

  @override
  Widget build(BuildContext context) {

    return  Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.h),
      child: CustomBoxBigWidget(
          width: double.infinity,
          height: 450.h,

          child:   MultiplayerReytingWidget()
      ),
    );
  }
}