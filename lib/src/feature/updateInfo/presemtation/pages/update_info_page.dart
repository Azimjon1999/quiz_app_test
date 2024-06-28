import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:quiz_app/src/core/style/images.dart';
import 'package:quiz_app/src/core/widget/appbar_leading_widget.dart';
import 'package:quiz_app/src/core/widget/scaffold_with_background_widget.dart';
import 'package:quiz_app/src/feature/updateInfo/controller/update_info__controller.dart';
import 'package:quiz_app/src/feature/updateInfo/presemtation/widgets/update_info_widget.dart';

class UpdateInfoPage extends StatelessWidget {

  const UpdateInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<UpdateInfoController>(context);
    
    return ScaffoldWithBackgroundWidget(
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
            SizedBox(
              height: 80.h,
              width: 80.w,
              child: AppImages.userIcon,
            ),
            SizedBox(height: 24.h),
            const UpdateInfoWidget(
              userName: 'Azimjon',
              email: 'AzimjonEshonxojayec@gmailcom',
            ),
            SizedBox(height: 94.h),
           // MyTextField(text: '', controller: provider.userNameC),
            SizedBox(height: 30.h),
            // MyTextField(
            //   text: 'New Password',
            //   controller: provider.passC,
            // ),
            SizedBox(height: 30.h),
            // MyTextField(
            //   text: 'Confirm Password',
            //   controller: provider.confirmPassC,
            // ),
          ],
        ),
      ),
    );
  }
}
