// ignore_for_file: override_on_non_overriding_member

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'colors.dart';

@immutable
final class AppTextStyle extends TextTheme {
  const AppTextStyle();

  /// new text styles
  TextStyle? get appNameQuiz => TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: FontSize.size90,
    fontFamily: "Rubik",
    color: AppColors.c0048B5,
  );


  /// eng yaqin songa qarab olinadi:
  @override
  TextStyle? get profileTitleLarge => TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: FontSize.size90,
        fontFamily: "Rubik",
        color: AppColors.black,
      );

}

@immutable
final class FontSize {
  const FontSize._();

  static double size90 = 90.sp;
}
