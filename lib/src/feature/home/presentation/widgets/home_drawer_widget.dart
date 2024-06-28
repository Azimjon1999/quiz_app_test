import 'package:flutter/material.dart';
import 'package:quiz_app/src/core/localization/words.dart';
import 'package:quiz_app/src/core/style/colors.dart';
import 'package:quiz_app/src/core/style/images.dart';

class HomeDrawerWidget extends StatelessWidget {
  final VoidCallback languageOnTap;
  final VoidCallback chahgeInfoOnTap;
  final VoidCallback logOutOnTap;
  const HomeDrawerWidget({
    super.key,
    required this.languageOnTap,
    required this.chahgeInfoOnTap,
    required this.logOutOnTap,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 90,
                  bottom: 45,
                ),
                child: Column(
                  children: [
                    AppImages.userBlueIcon,
                    const SizedBox(height: 15),
                    Text(
                      Words.userName.tr(context),
                      style: const TextStyle(
                        fontSize: 25,
                        fontFamily: 'IrishGrover',
                        color: AppColors.c0048B5,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Divider(
              height: 1,
              color: AppColors.c7A7A7A,
            ),
            const SizedBox(height: 10),
            MaterialButton(
              onPressed: languageOnTap,
              minWidth: double.infinity,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  Words.language.tr(context),
                  textAlign: TextAlign.start,
                  style: const TextStyle(
                    fontSize: 25,
                    fontFamily: 'IrishGrover',
                    color: AppColors.c0048B5,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            const Divider(
              height: 1,
              color: AppColors.c7A7A7A,
            ),
            const SizedBox(height: 10),
            MaterialButton(
              onPressed: chahgeInfoOnTap,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  Words.changeInfo.tr(context),
                  style: const TextStyle(
                    fontSize: 25,
                    fontFamily: 'IrishGrover',
                    color: AppColors.c0048B5,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            const Divider(
              height: 1,
              color: AppColors.c7A7A7A,
            ),
            const SizedBox(height: 340),
            MaterialButton(
              onPressed: logOutOnTap,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  Words.logOut.tr(context),
                  style: const TextStyle(
                    fontSize: 25,
                    fontFamily: 'IrishGrover',
                    color: AppColors.cFE3340,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
