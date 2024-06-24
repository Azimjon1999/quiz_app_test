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
  //every colors



  // gradients
  static const List<Color> homeMainScrollItems = <Color>[white, black];
}
