import "package:flutter/material.dart";
import "package:go_router/go_router.dart";
import "package:provider/provider.dart";
import "package:quiz_app/src/core/routes/app_route_name.dart";
import "package:quiz_app/src/core/style/colors.dart";
import "package:quiz_app/src/core/widget/app_title_widget.dart";
import "package:quiz_app/src/core/widget/custom_button_widget.dart";
import "package:quiz_app/src/core/widget/my_textfield_widget.dart";
import "package:quiz_app/src/feature/auth/controller/auth_controller.dart";

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
              padding: const EdgeInsets.symmetric(horizontal: 54),
              child: Column(
                children: [
                  const SizedBox(height: 190),
                  const AppTitleWidget(),
                  const SizedBox(height: 55),
                  MyTextField(
                    text: 'Email Adress',
                    controller: provider.emailC,
                  ),
                  const SizedBox(height: 24),
                  MyTextField(
                    text: 'Password',
                    controller: provider.passC,
                  ),
                  const SizedBox(height: 24),
                  MyTextField(
                    text: 'Confirm Password',
                    controller: provider.confirmC,
                  ),
                  const SizedBox(height: 30),
                  CustomButtonWidget(
                    func: () {
                      context.go('${AppRouteName.registerPage}/${AppRouteName.otpPage}');
                    },
                    child: const Text(
                      'Register',
                      style: TextStyle(
                        fontSize: 30,
                        color: AppColors.white,
                        fontFamily: 'IrishGrover',
                      ),
                    ),
                  ),
                  const SizedBox(height: 28),
                  InkWell(
                    onTap: () {
                      context.go(AppRouteName.loginPage);
                    },
                    child: const Text(
                      'Already have account ?',
                      style: TextStyle(
                        fontSize: 18,
                        color: AppColors.white,
                        fontFamily: 'IrishGrover',
                      ),
                    ),
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
