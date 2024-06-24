import "package:flutter/material.dart";
import "package:provider/provider.dart";
import "package:quiz_app/src/core/style/colors.dart";
import "package:quiz_app/src/core/widget/custom_box_widget.dart";
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
      extendBodyBehindAppBar: true,
      backgroundColor: AppColors.transparent,
      appBar: AppBar(
        backgroundColor: AppColors.transparent,
      ),
      body: ScaffoldWithBackgroundWidget(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 54),
            child: Column(
              children: [
                const SizedBox(height: 190),
                const CustomBoxWidget(
                  height: 174,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Quiz',
                        style: TextStyle(
                          fontSize: 75,
                          color: AppColors.c0048B5,
                          fontFamily: 'IrishGrover',
                        ),
                      ),
                      Text(
                        'First',
                        style: TextStyle(
                          fontSize: 35,
                          color: AppColors.c0048B5,
                          fontFamily: 'IrishGrover',
                        ),
                      ),
                    ],
                  ),
                ),
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
                MaterialButton(
                  onPressed: () {},
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
