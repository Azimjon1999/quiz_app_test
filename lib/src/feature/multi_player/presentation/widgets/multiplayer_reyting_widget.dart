import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/localization/words.dart';
import '../../../../core/style/colors.dart';
import 'multiplayer_listtitle_widget.dart';

class MultiplayerReytingWidget extends StatelessWidget {
  MultiplayerReytingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.h),
      child: Column(
        children: [
          SizedBox(
            height: 10.h,
          ),
          Text(
            Words.leaderboard.tr(context),
            style: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeight.w700,
                color: AppColors.c0048B5,
                fontFamily: "IrishGrover"),
          ),
          SizedBox(
            height: 10.w,
          ),
          Expanded(
              child: ListView.separated(
                  itemBuilder: (itemBuilder, index) =>
                      const MultiplayerListtitleWidget(),
                  separatorBuilder: (separatorBuilder, index) => const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 24),
                        child: Divider(
                          color: AppColors.cD9D9D9,
                        ),
                      ),
                  itemCount: 10))
        ],
      ),
    );
  }
}
