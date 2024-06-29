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

class _SplashPageState extends State<SplashPage> with TickerProviderStateMixin {

  late final AnimationController _controller;
  late final Animation<double> _animation;
  // Future<void> splash() async {
  //   await Future.delayed(const Duration(seconds: 3));
  //   if (token == null) {
  //     context.go(AppRouteName.chooseLanguage);
  //   } else {
  //     context.go(AppRouteName.homePage);
  //   }
  // }
  //
  // @override
  // void initState() {
  //   splash();
  //   super.initState();
  // }

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 4),
    );
    _animation = Tween(end: 0.80, begin: 0.1).animate(_controller);
    _controller.forward();
    stack();
    super.initState();
  }

  Future<void> stack() async {
    return await Future.delayed(
      const Duration(seconds: 3),
          () async {
            await Future.delayed(const Duration(seconds: 3));
              if (token == null) {
                context.go(AppRouteName.chooseLanguage);
              } else {
                context.go(AppRouteName.homePage);
              }
      },
    );
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
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Stack(
                children: [

                  FadeTransition(
                    opacity: _animation,
                    child:  const AppTitleWidget()
                  ),
                ],
              ),
            ),
            // child: AppImages.userIcon,
          ),
        ),
      ),
    );
  }
}
