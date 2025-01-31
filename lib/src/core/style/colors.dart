import "dart:ui";
import "package:flutter/foundation.dart";

@immutable
sealed class AppColors {

  //main colors
  static const Color transparent = Color(0x00000000);
  static const Color white = Color(0xffffffff);
  static const Color black = Color(0xFF000000);
  static const Color backgroundColor = Color(0xFF2491F5);
  static const Color c0048B5 = Color(0xFF0048B5);
  static const Color cFE3340 = Color(0xFFFE3340);
  static const Color c2ED334 = Color(0xFF2ED334);
  static const Color c7A7A7A = Color(0xFF7A7A7A);
  static const Color cD9D9D9 = Color(0xFFD9D9D9);
  //every colors



  // gradients
  static const List<Color> homeMainScrollItems = <Color>[white, black];
}
