import 'package:flutter/material.dart';
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
                    const Text(
                      'User Name',
                      style: TextStyle(
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
            const SizedBox(height: 18),
            InkWell(
              onTap: languageOnTap,
              child: const Text(
                'Language',
                style: TextStyle(
                  fontSize: 25,
                  fontFamily: 'IrishGrover',
                  color: AppColors.c0048B5,
                ),
              ),
            ),
            const SizedBox(height: 18),
            const Divider(
              height: 1,
              color: AppColors.c7A7A7A,
            ),
            const SizedBox(height: 18),
            InkWell(
              onTap: chahgeInfoOnTap,
              child: const Text(
                'Change Info',
                style: TextStyle(
                  fontSize: 25,
                  fontFamily: 'IrishGrover',
                  color: AppColors.c0048B5,
                ),
              ),
            ),
            const SizedBox(height: 18),
            const Divider(
              height: 1,
              color: AppColors.c7A7A7A,
            ),
            const SizedBox(height: 340),
            InkWell(
              onTap: logOutOnTap,
              child: const Text(
                'Log Out',
                style: TextStyle(
                  fontSize: 25,
                  fontFamily: 'IrishGrover',
                  color: AppColors.cFE3340,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
