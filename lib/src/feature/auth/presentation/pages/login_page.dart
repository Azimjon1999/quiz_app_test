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
            padding: const EdgeInsets.symmetric(horizontal: 54),
            child: Column(
              children: [
                const SizedBox(height: 190),
                const AppTitleWidget(),
                const SizedBox(height: 55),
                MyTextField(
                  controller: provider.emailC,
                  text: 'Email Adress',
                  type: TextInputType.emailAddress,
                ),
                const SizedBox(height: 26),
                MyTextField(
                  controller: provider.passC,
                  text: 'Password',
                ),
                const SizedBox(height: 12),
                const SizedBox(
                  width: double.infinity,
                  child: Text(
                    textAlign: TextAlign.right,
                    'Forgot Password?',
                    style: TextStyle(
                      fontSize: 14,
                      color: AppColors.white,
                      fontFamily: 'IrishGrover',
                    ),
                  ),
                ),
                const SizedBox(height: 18),
                CustomButtonWidget(
                  func: () {},
                  child: const Text(
                    'LogIn',
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
                    context.go(AppRouteName.registerPage);
                  },
                  child: const Text(
                    'Don’t have an account ?',
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
      ),
    );
  }
}
