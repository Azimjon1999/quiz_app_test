import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:quiz_app/src/core/routes/app_route_name.dart';

class AuthController extends ChangeNotifier {
  TextEditingController emailC = TextEditingController();
  TextEditingController passC = TextEditingController();
  TextEditingController confirmC = TextEditingController();
  TextEditingController otp = TextEditingController();

  void navigateToLogin(BuildContext context) {
    context.go(AppRouteName.loginPage);
  }

  void navigateToRegister(BuildContext context) {
    context.go(AppRouteName.registerPage);
  }

  void navigateToOtp(BuildContext context) {
    context.go('${AppRouteName.registerPage}/${AppRouteName.otpPage}');
  }

  void navigateToHome(BuildContext context) {
    context.go(AppRouteName.homePage);
  }
}
