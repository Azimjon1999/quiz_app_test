import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quiz_app/src/feature/profile/presentation/widgets/profile_history_listtitle_widget.dart';
import 'package:quiz_app/src/feature/profile/presentation/widgets/profile_history_widget.dart';
import 'package:quiz_app/src/feature/profile/presentation/widgets/profile_listtitle_widget.dart';
import 'package:quiz_app/src/feature/profile/presentation/widgets/profile_reyting_widget.dart';
import '../../../../core/widget/custom_box_big_widget.dart';

class ProfilePageViewWidget extends StatelessWidget {
  const ProfilePageViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    PageController controller = PageController(

    );
    return  Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.h),
      child: CustomBoxBigWidget(
          width: double.infinity,
          height: 450.h,

          child: PageView(
            controller: controller,
            children:  [
           ProfileHistoryWidget(),
              ProfileReytingWidget()
            ],

          )
      ),
    );
  }
}
