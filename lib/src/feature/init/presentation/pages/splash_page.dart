import "package:flutter/material.dart";
import "package:go_router/go_router.dart";
import "package:quiz_app/setup.dart";
import "package:quiz_app/src/core/routes/app_route_name.dart";
import "package:quiz_app/src/core/style/colors.dart";
import "package:quiz_app/src/core/widget/app_title_widget.dart";
import "../../../../core/widget/scaffold_with_background_widget.dart";

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  Future<void> splash() async {
    await Future.delayed(const Duration(seconds: 3));
    if (token == null) {
      context.go(AppRouteName.chooseLanguage);
    } else {
      context.go(AppRouteName.homePage);
    }
  }

  @override
  void initState() {
    splash();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: AppColors.transparent,
      appBar: AppBar(
        backgroundColor: AppColors.transparent,
      ),
      body: ScaffoldWithBackgroundWidget(
        child: Center(
          child: AnimatedContainer(
            height: 175,
            width: 290,
            duration: const Duration(seconds: 1),
            child: const AppTitleWidget(),
            // child: AppImages.userIcon,
          ),
        ),
      ),
    );
  }
}
