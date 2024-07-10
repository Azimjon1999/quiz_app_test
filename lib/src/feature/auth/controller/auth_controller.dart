import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:quiz_app/setup.dart';
import 'package:quiz_app/src/core/routes/app_route_name.dart';
import 'package:quiz_app/src/core/storage/app_storage.dart';
// import 'package:quiz_app/src/core/storage/app_storage.dart';
import 'package:quiz_app/src/models/token_model.dart';
import 'package:quiz_app/src/repository/app_repository_impl.dart';

class AuthController extends ChangeNotifier {
  TextEditingController emailC = TextEditingController();
  TextEditingController passC = TextEditingController();
  TextEditingController confirmC = TextEditingController();
  TextEditingController otp = TextEditingController();

  AppRepositoryImpl appRepositoryImpl = AppRepositoryImpl();

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
    context.go(
        '${AppRouteName.loginPage}/${AppRouteName.forgetPassword}/${AppRouteName.otpForgetPage}');
  }

  void navigateToNewPassword(BuildContext context) {
    context.go(AppRouteName.nemPasswordPage);
  }

  /// Methods
  ///
  ///

  /// Login Method Get Access Token, RefreshToken and Store to storage
  Future<void> login(BuildContext context) async {
    TokenModel? tokenModel = await appRepositoryImpl.loginUser(
      email: emailC.text.trim(),
      password: passC.text.trim(),
    );
    if (tokenModel != null) {
      token = tokenModel.token;
      // Store tokens to local storage with sharedPref and after that navigato to homePage
      AppStorage.store(key: StorageKey.acessToken, value: tokenModel.token!);
      AppStorage.store(
          key: StorageKey.refToken, value: tokenModel.refreshToken!);
      navigateToHome(context);
    }
  }

  /// Register Method Get Access Token and navigate to Otp page
  Future<void> register(BuildContext context) async {
    TokenModel? tokenModel = await appRepositoryImpl.registerUser(
      email: emailC.text.trim(),
      password: passC.text.trim(),
    );
    if (tokenModel != null) {
      token = tokenModel.token;
      navigateToOtp(context);
    }
  }

  /// Check Otp Method post email, otpCode and acessToken
  Future<void> checkOtpCode(BuildContext context) async {
    String? result = await appRepositoryImpl.confirmOtp(
      email: emailC.text.trim(),
      code: otp.text.trim(),
      token: token!,
    );

    if (result != null) {
      navigateToLogin(context);
    } else {
      log('error checkOtp FUnc');
    }
  }

  /// Send verifation code to email
  Future<void> forgotPasswordE(BuildContext context) async {
    TokenModel? tokenModel = await appRepositoryImpl.forgotPassword(
      email: emailC.text.trim(),
    );
    if (tokenModel != null) {
      token = tokenModel.token;
      navigateToOtpForgotPassword(context);
    } else {
      log('error');
    }
  }

  /// Check Otp Method post email, otpCode and acessToken
  Future<void> checkForgotPasswordOtpCode(BuildContext context) async {
    String? result = await appRepositoryImpl.confirmOtpForgot(
      email: emailC.text.trim(),
      code: otp.text.trim(),
      token: token!,
    );

    if (result != null) {
      navigateToNewPassword(context);
    } else {
      log('error checkOtp FUnc');
    }
  }
}
