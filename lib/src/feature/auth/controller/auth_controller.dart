import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:quiz_app/src/core/routes/app_route_name.dart';

class AuthController extends ChangeNotifier {
  TextEditingController emailC = TextEditingController();
  TextEditingController passC = TextEditingController();
  TextEditingController confirmC = TextEditingController();
  TextEditingController otp = TextEditingController();

  void navigateToLogin(BuildContext context) {
    emailC.clear();
    passC.clear();
    confirmC.clear();
    context.go(AppRouteName.loginPage);
  }

  void navigateToRegister(BuildContext context) {
    emailC.clear();
    passC.clear();
    confirmC.clear();
    context.go(AppRouteName.registerPage);
  }

  void navigateToOtp(BuildContext context) {
    context.go('${AppRouteName.registerPage}/${AppRouteName.otpPage}');
  }

  void navigateToHome(BuildContext context) {
    context.go(AppRouteName.homePage);
  }

  void navigateToForgotPassword(BuildContext context) {
    context.go("${AppRouteName.loginPage}/${AppRouteName.forgetPassword}");
  }

  void navigateToOtpForgotPassword(BuildContext context) {
    context.go('${AppRouteName.loginPage}/${AppRouteName.forgetPassword}/${AppRouteName.otpForgetPage}');
  }
  void navigateToNewPassword(BuildContext context) {
    context.go(AppRouteName.nemPasswordPage);
  }
}
