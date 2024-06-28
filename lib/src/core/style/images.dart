import "package:flutter/material.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";
import "package:flutter_svg/svg.dart";

import "../../../generated/assets.dart";

@immutable
sealed class AppImages {
  const AppImages._();

  ///  SVG

  static final SvgPicture close = SvgPicture.asset(
    Assets.imagesClose,
    height: 30.h,
    width: 30.w,
    fit: BoxFit.cover,
  );

  static final SvgPicture back = SvgPicture.asset(
    "assets/images/vector.svg",
    height: 30.h,
    width: 30.w,
    fit: BoxFit.cover,
  );

  static final SvgPicture menuIcon = SvgPicture.asset(
    "assets/images/menu_icon.svg",
    height: 40.h,
    width: 40.w,
    fit: BoxFit.cover,
  );

  static final SvgPicture userIcon = SvgPicture.asset(
    "assets/images/user_circler.svg",
    height: 50.h,
    width: 50.w,
    fit: BoxFit.cover,
  );

  static final SvgPicture userBlueIcon = SvgPicture.asset(
    "assets/images/user_circle_blue.svg",
    height: 80.h,
    width: 80.w,
    fit: BoxFit.cover,
  );

  static final SvgPicture down = SvgPicture.asset(
    "assets/images/down.svg",
    height: 20.h,
    width: 20.w,
    // fit: BoxFit.cover,
  );

  static final SvgPicture loseIcon = SvgPicture.asset(
    "assets/images/lose.svg",
    height: 110.h,
    width: 110.w,
    fit: BoxFit.cover,
  );

  static final SvgPicture winIcon = SvgPicture.asset(
    "assets/images/win.svg",
    height: 130.h,
    width: 130.w,
    fit: BoxFit.cover,
  );

  static final SvgPicture starIcon = SvgPicture.asset(
    "assets/images/star.svg",
    height: 23.h,
    width: 23.w,
    fit: BoxFit.cover,
  );

  /// PNG
  ///

  static final Image someImage = Image.asset(
    "assets/images/background_image.png",
    height: double.infinity,
    width: double.infinity,
    fit: BoxFit.cover,
  );
}

extension Extension on Image {
  Image copyWith({
    double? width,
    double? height,
    BoxFit? fit,
    Color? color,
  }) =>
      Image(
        image: image,
        width: width ?? this.width,
        height: height ?? this.height,
        fit: fit ?? this.fit,
        color: color ?? this.color,
      );
}
