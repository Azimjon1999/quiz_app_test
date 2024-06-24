// ignore_for_file: override_on_non_overriding_member

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'colors.dart';

@immutable
final class AppTextStyle extends TextTheme {
  const AppTextStyle();

  /// new text styles
  @override
  TextStyle? get appNameQuiz => TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: FontSize.size90,
    fontFamily: "IrishGrover",
    color: AppColors.c0048B5,
  );

  @override
  TextStyle? get appNameFirst => TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: FontSize.size50,
    fontFamily: "IrishGrover",
    color: AppColors.c0048B5,
  );

  @override
  TextStyle? get languageName => TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: FontSize.size36,
    fontFamily: "IrishGrover",
    color: AppColors.c0048B5,
  );

  ///login page
  @override
  TextStyle? get hintextName => TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: FontSize.size16,
    fontFamily: "IrishGrover",
    color: AppColors.c7A7A7A,
  );

  @override
  TextStyle? get forgetPasswordName => TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: FontSize.size14,
    fontFamily: "IrishGrover",
    color: AppColors.white,
  );


  @override
  TextStyle? get loginName => TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: FontSize.size40,
    fontFamily: "IrishGrover",
    color: AppColors.white,
  );

  @override
  TextStyle? get anAccountName => TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: FontSize.size18,
    fontFamily: "IrishGrover",
    color: AppColors.white,
  );

  @override
  TextStyle? get registerName => TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: FontSize.size40,
    fontFamily: "IrishGrover",
    color: AppColors.white,
  );

  @override
  TextStyle? get haveAccountName => TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: FontSize.size18,
    fontFamily: "IrishGrover",
    color: AppColors.white,
  );

  @override
  TextStyle? get verifiCodeName => TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: FontSize.size26,
    fontFamily: "IrishGrover",
    color: AppColors.white,
  );

  @override
  TextStyle? get checkName => TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: FontSize.size20,
    fontFamily: "IrishGrover",
    color: AppColors.c0048B5,
  );

  @override
  TextStyle? get otpText => TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: FontSize.size30,
    fontFamily: "IrishGrover",
    color: AppColors.c7A7A7A,
  );

  @override
  TextStyle? get drowerTitleText => TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: FontSize.size26,
    fontFamily: "IrishGrover",
    color: AppColors.c0048B5,
  );

  @override
  TextStyle? get drowerBodyText => TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: FontSize.size22,
    fontFamily: "IrishGrover",
    color: AppColors.c0048B5,
  );

  @override
  TextStyle? get drowerLogOutText => TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: FontSize.size22,
    fontFamily: "IrishGrover",
    color: AppColors.cFE3340,
  );

  @override
  TextStyle? get buttonTextBlue => TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: FontSize.size40,
    fontFamily: "IrishGrover",
    color: AppColors.c0048B5,
  );

  @override
  TextStyle? get profileLarchText=> TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: FontSize.size40,
    fontFamily: "IrishGrover",
    color: AppColors.c0048B5,
  );

  @override
  TextStyle? get profileCategoryTextB=> TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: FontSize.size22,
    fontFamily: "IrishGrover",
    color: AppColors.black,
  );

  @override
  TextStyle? get profileCategoryTextBlue=> TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: FontSize.size22,
    fontFamily: "IrishGrover",
    color: AppColors.c0048B5,
  );

  @override
  TextStyle? get profileReytingText=> TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: FontSize.size20,
    fontFamily: "IrishGrover",
    color: AppColors.c0048B5,
  );

  @override
  TextStyle? get profileTitleReytingBlue=> TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: FontSize.size30,
    fontFamily: "IrishGrover",
    color: AppColors.c0048B5,
  );

  @override
  TextStyle? get profileTitleReytingBlueW=> TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: FontSize.size30,
    fontFamily: "IrishGrover",
    color: AppColors.c0048B5,
  );

  @override
  TextStyle? get profileTitleReytingRed=> TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: FontSize.size30,
    fontFamily: "IrishGrover",
    color: AppColors.cFE3340,
  );

  @override
  TextStyle? get profileTitleReytingRedL=> TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: FontSize.size30,
    fontFamily: "IrishGrover",
    color: AppColors.cFE3340,
  );


  @override
  TextStyle? get profileHistoryResult=> TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: FontSize.size26,
    fontFamily: "IrishGrover",
    color: AppColors.c0048B5,
  );

  @override
  TextStyle? get profileHistoryResultRed=> TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: FontSize.size20,
    fontFamily: "IrishGrover",
    color: AppColors.cFE3340,
  );

  @override
  TextStyle? get profileHistoryResultGreen=> TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: FontSize.size20,
    fontFamily: "IrishGrover",
    color: AppColors.c2ED334,
  );

  @override
  TextStyle? get profileSettingTitleSmall=> TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: FontSize.size14,
    fontFamily: "IrishGrover",
    color: AppColors.c0048B5,
  );

  @override
  TextStyle? get profileSettingTitleBig=> TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: FontSize.size24,
    fontFamily: "IrishGrover",
    color: AppColors.c0048B5,
  );

  @override
  TextStyle? get singleTitleButtonText=> TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: FontSize.size26,
    fontFamily: "IrishGrover",
    color: AppColors.white,
  );

  @override
  TextStyle? get categoryButtonText => TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: FontSize.size40,
    fontFamily: "IrishGrover",
    color: AppColors.c0048B5,
  );

  @override
  TextStyle? get QuetionText => TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: FontSize.size30,
    fontFamily: "IrishGrover",
    color: AppColors.c0048B5,
  );

  @override
  TextStyle? get SinglePlayerScoreText => TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: FontSize.size26,
    fontFamily: "IrishGrover",
    color: AppColors.c0048B5,
  );

  @override
  TextStyle? get winnerStatisticText => TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: FontSize.size36,
    fontFamily: "IrishGrover",
    color: AppColors.c0048B5,
  );

  @override
  TextStyle? get winnerCorrectScoreText => TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: FontSize.size24,
    fontFamily: "IrishGrover",
    color: AppColors.c2ED334,
  );

  @override
  TextStyle? get winnerInCorrectScoreText => TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: FontSize.size24,
    fontFamily: "IrishGrover",
    color: AppColors.cFE3340,
  );

  @override
  TextStyle? get multiplayerYourId => TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: FontSize.size30,
    fontFamily: "IrishGrover",
    color: AppColors.c0048B5,
  );

  @override
  TextStyle? get multiplayerTitleIdNum => TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: FontSize.size50,
    fontFamily: "IrishGrover",
    color: AppColors.c0048B5,
  );

  @override
  TextStyle? get multiplayerUserName => TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: FontSize.size50,
    fontFamily: "IrishGrover",
    color: AppColors.c0048B5,
  );

  @override
  TextStyle? get multiplayerSearching => TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: FontSize.size30,
    fontFamily: "IrishGrover",
    color: AppColors.c0048B5,
  );

  @override
  TextStyle? get multiplayerGamingStart => TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: FontSize.size40,
    fontFamily: "IrishGrover",
    color: AppColors.c0048B5,
  );

  @override
  TextStyle? get multiplayerNameandId=> TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: FontSize.size24,
    fontFamily: "IrishGrover",
    color: AppColors.white,
  );

  @override
  TextStyle? get multiplayerQuations=> TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: FontSize.size20,
    fontFamily: "IrishGrover",
    color: AppColors.c0048B5,
  );

  @override
  TextStyle? get winnerUserScore=> TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: FontSize.size26,
    fontFamily: "IrishGrover",
    color: AppColors.c0048B5,
  );


}

@immutable
final class FontSize {
  const FontSize._();

  static double size90 = 90.sp;
  static double size50 = 50.sp;
  static double size36 = 36.sp;
  static double size16 = 16.sp;
  static double size14 = 14.sp;
  static double size40 = 40.sp;
  static double size18 = 18.sp;
  static double size26 = 26.sp;
  static double size20 = 20.sp;
  static double size30 = 30.sp;
  static double size22 = 22.sp;
  static double size24 = 24.sp;
}
