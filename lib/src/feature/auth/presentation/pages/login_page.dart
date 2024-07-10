import "package:flutter/material.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";
import "package:provider/provider.dart";
import "package:quiz_app/src/core/localization/words.dart";
import "package:quiz_app/src/core/style/colors.dart";
import "package:quiz_app/src/core/widget/app_title_widget.dart";
import "package:quiz_app/src/core/widget/custom_button_widget.dart";
import "package:quiz_app/src/core/widget/my_textfield_widget.dart";
import "package:quiz_app/src/feature/auth/controller/auth_controller.dart";
import "package:quiz_app/src/feature/auth/presentation/widgets/login_botton_text_widget.dart";
import "package:quiz_app/src/feature/auth/presentation/widgets/login_forgot_text_widget.dart";
import "../../../../core/widget/scaffold_with_background_widget.dart";

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<AuthController>(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: ScaffoldWithBackgroundWidget(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 34),
            child: Column(
              children: [
                SizedBox(height: 170.h),
                const AppTitleWidget(),
                SizedBox(height: 50.h),
                MyTextField(
                  controller: provider.emailC,
                  text: Words.emailAdress.tr(context),
                  // text:  "",
                  type: TextInputType.emailAddress,
                ),
                SizedBox(height: 20.h),
                MyTextField(
                  controller: provider.passC,
                  text: Words.password.tr(context),
                  // text: "",
                ),
                SizedBox(height: 10.h),
                LoginForgotTextWidget(
                    onTap: () => provider.navigateToForgotPassword(context)),
                SizedBox(height: 16.h),
                CustomButtonWidget(
                  func: () async {
                    provider.login(context);
                  },
                  child: Text(
                    Words.login.tr(context),
                    style:  TextStyle(
                      fontSize: 30.sp,
                      color: AppColors.white,
                      fontFamily: 'IrishGrover',
                    ),
                  ),
                ),
                SizedBox(height: 24.h),
                LoginBottonTextWidget(
                  onTap: () => provider.navigateToRegister(context),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
