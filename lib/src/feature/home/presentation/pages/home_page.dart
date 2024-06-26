import 'package:flutter/material.dart';
import 'package:quiz_app/src/core/style/colors.dart';
import 'package:quiz_app/src/core/style/images.dart';
import 'package:quiz_app/src/core/widget/app_title_widget.dart';
import 'package:quiz_app/src/core/widget/custom_button_widget.dart';
import 'package:quiz_app/src/core/widget/scaffold_with_background_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
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
              const Text(
                'Language',
                style: TextStyle(
                  fontSize: 25,
                  fontFamily: 'IrishGrover',
                  color: AppColors.c0048B5,
                ),
              ),
              const SizedBox(height: 18),
              const Divider(
                height: 1,
                color: AppColors.c7A7A7A,
              ),
              const SizedBox(height: 18),
              const Text(
                'Change Info',
                style: TextStyle(
                  fontSize: 25,
                  fontFamily: 'IrishGrover',
                  color: AppColors.c0048B5,
                ),
              ),
              const SizedBox(height: 18),
              const Divider(
                height: 1,
                color: AppColors.c7A7A7A,
              ),
              const SizedBox(height: 340),
              const Text(
                'Log Out',
                style: TextStyle(
                  fontSize: 25,
                  fontFamily: 'IrishGrover',
                  color: AppColors.cFE3340,
                ),
              ),
            ],
          ),
        ),
      ),
      body: ScaffoldWithBackgroundWidget(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Column(
            children: [
              const SizedBox(height: 46),
              Container(
                width: double.infinity,
                alignment: Alignment.centerLeft,
                child: CustomButtonWidget(
                  witdh: 68,
                  height: 60,
                  func: () {},
                  buttonColor: AppColors.white,
                  child: AppImages.menuIcon,
                ),
              ),
              const SizedBox(height: 150),
              const AppTitleWidget(),
              const SizedBox(height: 80),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 26),
                child: CustomButtonWidget(
                  buttonColor: AppColors.white,
                  func: () {},
                  child: const Text(
                    'Single Player',
                    style: TextStyle(
                      fontSize: 30,
                      color: AppColors.c0048B5,
                      fontFamily: 'IrishGrover',
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 22),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 26),
                child: CustomButtonWidget(
                  buttonColor: AppColors.white,
                  func: () {},
                  child: const Text(
                    'Multi Player',
                    style: TextStyle(
                      fontSize: 30,
                      color: AppColors.c0048B5,
                      fontFamily: 'IrishGrover',
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 80),
              CustomButtonWidget(
                witdh: 130,
                func: () {},
                child: AppImages.userIcon,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
