import "package:flutter/material.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";
import "package:go_router/go_router.dart";
import "package:provider/provider.dart";
import "package:quiz_app/src/core/style/colors.dart";
import "package:quiz_app/src/core/widget/app_title_widget.dart";
import "package:quiz_app/src/core/widget/appbar_leading_widget.dart";
import "package:quiz_app/src/core/widget/custom_button_widget.dart";
import "package:quiz_app/src/feature/auth/controller/auth_controller.dart";
import "package:quiz_app/src/feature/auth/presentation/widgets/otp_pin_code_widget.dart";
import "../../../../core/widget/scaffold_with_background_widget.dart";

class OtpForgetPage extends StatelessWidget {
  const OtpForgetPage({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<AuthController>(context);

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: ScaffoldWithBackgroundWidget(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: SingleChildScrollView(
            reverse: false,
            child: Column(
              children: [
                const SizedBox(height: 50),
                AppbarLeadingWidget(
                  func: () {
                    context.pop();
                  },
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    children: [
                      SizedBox(height: 86.h),
                      const AppTitleWidget(),
                      SizedBox(height: 68.h),
                      OtpPinCodeWidget(
                        otp: provider.otp,
                      ),
                      SizedBox(height: 196.h),
                      CustomButtonWidget(
                        func: () => provider.navigateToLogin(context),
                        child: const Text(
                          'Verifi Code',
                          style: TextStyle(
                            fontSize: 30,
                            color: AppColors.white,
                            fontFamily: 'IrishGrover',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
