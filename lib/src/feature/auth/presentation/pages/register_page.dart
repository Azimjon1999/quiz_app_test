import "package:flutter/material.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";
import "package:provider/provider.dart";
import "package:quiz_app/src/core/localization/words.dart";
import "package:quiz_app/src/core/style/colors.dart";
import "package:quiz_app/src/core/widget/app_title_widget.dart";
import "package:quiz_app/src/core/widget/custom_button_widget.dart";
import "package:quiz_app/src/core/widget/my_textfield_widget.dart";
import "package:quiz_app/src/feature/auth/controller/auth_controller.dart";
import "package:quiz_app/src/feature/auth/presentation/widgets/register_bottom_text_widget.dart";

import "../../../../core/widget/scaffold_with_background_widget.dart";

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<AuthController>(context);

    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Stack(
        children: [
          const ScaffoldWithBackgroundWidget(child: SizedBox.expand()),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 34),
              child: Column(
                children: [
                  SizedBox(height: 170.h),
                  const AppTitleWidget(),
                  SizedBox(height: 50.h),
                  MyTextField(
                    text: Words.emailAdress.tr(context) ,
                    controller: provider.emailC,
                  ),
                  SizedBox(height: 20.h),
                  MyTextField(
                    text:Words.password.tr(context) ,
                    controller: provider.passC,
                  ),
                  SizedBox(height: 20.h),
                  MyTextField(
                    text:Words.confirmPassword.tr(context) ,
                    controller: provider.confirmC,
                  ),
                  SizedBox(height: 20.h),
                  CustomButtonWidget(
                    // witdh: double.infinity,
                    func: () => provider.navigateToOtp(context),
                    child:  Text(
                      Words.register.tr(context) ,
                      style: const TextStyle(
                        fontSize: 30,
                        color: AppColors.white,
                        fontFamily: 'IrishGrover',
                      ),
                    ),
                  ),
                  SizedBox(height: 24.h),
                  RegisterBottomTextWidget(
                    onTap: () => provider.navigateToLogin(context),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
