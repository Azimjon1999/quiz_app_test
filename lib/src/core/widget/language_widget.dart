import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:l/l.dart';
import 'package:quiz_app/generated/assets.dart';
import 'package:quiz_app/src/core/localization/words.dart';
import 'package:quiz_app/src/core/style/colors.dart';
import 'package:quiz_app/src/core/style/text_style.dart';
import 'package:quiz_app/src/core/widget/custom_button_widget.dart';
import 'package:quiz_app/src/feature/settings/inherited/local_controller.dart';
import 'package:quiz_app/src/feature/settings/model/language_type.dart';

import '../routes/app_route_name.dart';

class LanguagesWidget extends StatelessWidget {
  final LocalController localController;
  final bool shouldGoNext;

  const LanguagesWidget({
    super.key,
    required this.shouldGoNext,
    required this.localController,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomButtonWidget(
          blurRadius: 16,
          padding: EdgeInsets.symmetric(horizontal: 14.h),
          width: double.infinity,
          height: 74.h,
          buttonColor: AppColors.white,
          func: () {
            Future<dynamic>.delayed(const Duration(seconds: 2)).then<dynamic>(
                (value) => shouldGoNext
                    ? context.go(AppRouteName.loginPage)
                    : context.pop());

            localController.changeLocal(LanguageType.uz);
            l.i(localController.selectedLanguage);
            l.i(Words.uzbekLanguage.tr(context));
          },
          borderSide: BorderSide(
            color: localController.selectedLanguage == "uz"
                ? AppColors.c2ED334
                : AppColors.transparent,
            width: 2,
          ),
          child: ListTile(
            contentPadding: EdgeInsets.zero,
            leading: Text(
              Words.uzbekLanguage.tr(context),
              style: const AppTextStyle().titleMedium,
            ),
            trailing: SvgPicture.asset(
              Assets.imagesUzbFlag,
              width: 35.w,
            ),
          ),
        ),
        SizedBox(height: 20.h),
        CustomButtonWidget(
          blurRadius: 16,
          padding: const EdgeInsets.symmetric(horizontal: 14),
          width: double.infinity,
          height: 74.h,
          buttonColor: AppColors.white,
          func: () {
            Future<dynamic>.delayed(const Duration(seconds: 2)).then<dynamic>(
                (value) => shouldGoNext
                    ? context.go(AppRouteName.loginPage)
                    : context.pop());

            localController.changeLocal(LanguageType.ru);
            l.i(localController.selectedLanguage);
            l.i(Words.russianLanguage.tr(context));
          },
          borderSide: BorderSide(
            color: localController.selectedLanguage == "ru"
                ? AppColors.c2ED334
                : AppColors.transparent,
            width: 2,
          ),
          child: ListTile(
            contentPadding: EdgeInsets.zero,
            leading: Text(
              Words.russianLanguage.tr(context),
              style: const AppTextStyle().titleMedium,
            ),
            trailing: SvgPicture.asset(
              Assets.imagesRusFlag,
              width: 35.w,
            ),
          ),
        ),
        SizedBox(height: 20.h),
        CustomButtonWidget(
          blurRadius: 16.h,
          padding: const EdgeInsets.symmetric(horizontal: 14),
          width: double.infinity,
          height: 74.h,
          buttonColor: AppColors.white,
          func: () {
            Future<dynamic>.delayed(const Duration(seconds: 2)).then<dynamic>(
                (value) => shouldGoNext
                    ? context.go(AppRouteName.loginPage)
                    : context.pop());

            localController.changeLocal(LanguageType.en);
            l.i(localController.selectedLanguage);
            l.i(Words.englishLanguage.tr(context));
          },
          borderSide: BorderSide(
            color: localController.selectedLanguage == "en"
                ? AppColors.c2ED334
                : AppColors.transparent,
            width: 2,
          ),
          child: ListTile(
            contentPadding: EdgeInsets.zero,
            leading: Text(
              Words.englishLanguage.tr(context),
              style: const AppTextStyle().titleMedium,
            ),
            trailing: SvgPicture.asset(
              Assets.imagesEnFlag,
              width: 35.w,
            ),
          ),
        ),
      ],
    );
  }
}
