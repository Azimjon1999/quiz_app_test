import "dart:developer";

import "package:flutter/material.dart";
import "package:go_router/go_router.dart";
import "package:provider/provider.dart";
import "package:quiz_app/src/core/routes/app_route_name.dart";
import "package:quiz_app/src/core/style/colors.dart";
import "package:quiz_app/src/core/style/images.dart";
import "package:quiz_app/src/core/widget/app_title_widget.dart";
import "package:quiz_app/src/core/widget/custom_button_widget.dart";
import "package:quiz_app/src/feature/auth/controller/auth_controller.dart";
import "package:quiz_app/src/feature/auth/presentation/widgets/otp_pin_code_widget.dart";

import "../../../../core/widget/scaffold_with_background_widget.dart";

class OtpPage extends StatelessWidget {
  const OtpPage({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<AuthController>(context);

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: ScaffoldWithBackgroundWidget(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: SingleChildScrollView(
            reverse: false,
            child: Column(
              children: [
                const SizedBox(height: 50),
                Container(
                  width: double.infinity,
                  alignment: Alignment.centerLeft,
                  child: CustomButtonWidget(
                    witdh: 68,
                    height: 60,
                    func: () {
                      context.pop();
                    },
                    buttonColor: AppColors.white,
                    child: AppImages.back,
                  ),
                ),
                const SizedBox(height: 88),
                const AppTitleWidget(),
                const SizedBox(height: 70),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 22),
                  child: OtpPinCodeWidget(
                    otp: provider.otp,
                  ),
                ),
                const SizedBox(height: 200),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 22),
                  child: CustomButtonWidget(
                    func: () {
                      log(provider.otp.text);
                      context.go(AppRouteName.homePage);
                    },
                    child: const Text(
                      'Verifi Code',
                      style: TextStyle(
                        fontSize: 30,
                        color: AppColors.white,
                        fontFamily: 'IrishGrover',
                      ),
                    ),
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
