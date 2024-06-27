import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:quiz_app/src/core/style/colors.dart';
import 'package:quiz_app/src/core/style/images.dart';
import 'package:quiz_app/src/core/widget/app_title_widget.dart';
import 'package:quiz_app/src/core/widget/custom_button_widget.dart';
import 'package:quiz_app/src/core/widget/scaffold_with_background_widget.dart';
import 'package:quiz_app/src/feature/home/controller/home_controller.dart';
import 'package:quiz_app/src/feature/home/presentation/widgets/home_drawer_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<HomeController>(context);
    return Scaffold(
      key: provider.scaffoldKey,
      drawer: HomeDrawerWidget(
        languageOnTap: () {},
        chahgeInfoOnTap: () {},
        logOutOnTap: () {},
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
                  func: () {
                    provider.openDrawer();
                  },
                  buttonColor: AppColors.white,
                  child: AppImages.menuIcon,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  children: [
                    SizedBox(height: 140.h),
                    const AppTitleWidget(),
                    SizedBox(height: 80.h),
                    CustomButtonWidget(
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
                    const SizedBox(height: 22),
                    CustomButtonWidget(
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
                    const SizedBox(height: 80),
                    CustomButtonWidget(
                      witdh: 130,
                      func: () {},
                      child: AppImages.userIcon,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
