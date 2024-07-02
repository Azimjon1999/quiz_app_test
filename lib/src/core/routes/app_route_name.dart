import "package:flutter/foundation.dart";

@immutable
final class AppRouteName {
  const AppRouteName._();

  static const String splashPage = "/splashPage";
  // Auth Section
  static const String chooseLanguage = "/choose_language";
  static const String loginPage = "/login_page";
  static const String forgetPassword = "forget_password_page";
  static const String otpForgetPage = "otp_forget_page";
  static const String nemPasswordPage = "/new_password_page";
  static const String registerPage = "/register_page";
  static const String otpPage = "otp_page";
  // Home Section
  static const String homePage = "/";
  static const String updateInfoPage = 'updatePage';
  // Profile Section
  static const String profilePage = "/profile_page";
  // Single Player Section
  static const String singlePlayerPage = "single_player_page";
  static const String singlePlayerQuiz = 'single_player_quiz';
  static const String singlePlayerQuizResult = 'single_player_quiz_result';
  // MultiPlayer Section
  static const String multiPlayerPage = "multi_player_page";
  static const String multiPlayerWaiting = "multi_player_waiting";
  static const String multiPlayerQuiz = "multi_player_quiz";
  static const String multiPlayerGetReady = "multi_player_get_ready";
  static const String multiPlayerResult = "multi_player_result";
}
