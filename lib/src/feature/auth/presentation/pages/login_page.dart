import "dart:developer";

import "package:flutter/material.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";
import "package:provider/provider.dart";
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
      // resizeToAvoidBottomInset: false,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
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
                  text: 'Email Adress',
                  type: TextInputType.emailAddress,
                ),
                SizedBox(height: 20.h),
                MyTextField(
                  controller: provider.passC,
                  text: 'Password',
                ),
                SizedBox(height: 10.h),
                LoginForgotTextWidget(onTap: () {
                  log('Forgot');
                }),
                SizedBox(height: 16.h),
                CustomButtonWidget(
                  // witdh: MediaQuery.of(context).size.width * 0.75,
                  func: () => provider.navigateToHome(context),
                  child: const Text(
                    'LogIn',
                    style: TextStyle(
                      fontSize: 30,
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
