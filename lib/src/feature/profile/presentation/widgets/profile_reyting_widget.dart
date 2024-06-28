import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quiz_app/src/feature/profile/presentation/widgets/profile_listtitle_widget.dart';
import '../../../../core/style/colors.dart';

class ProfileReytingWidget extends StatelessWidget {
  ProfileReytingWidget({
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
            "Leaderboard",
            style: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeight.w700,
                color: AppColors.c0048B5,
                fontFamily: "IrishGrover"),
          ),
          SizedBox(
            height: 10.h,
          ),
          Container(
            alignment: Alignment.center,
            height: 50,
            width: 50,
            color: Colors.red,
          ),
          SizedBox(
            height: 10.w,
          ),
          Expanded(
              child: ListView.separated(
                  itemBuilder: (itemBuilder, index) => const ProfileListTileWidget(),
                  separatorBuilder: (separatorBuilder, index) => const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 24),
                        child: Divider(
                          color: AppColors.cD9D9D9,
                        ),
                      ),
                  itemCount: 10)
          )
        ],
      ),
    );
  }
}
