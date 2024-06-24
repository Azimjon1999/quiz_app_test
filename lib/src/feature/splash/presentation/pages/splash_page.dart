import "package:flutter/material.dart";
import "package:quiz_app/src/core/localization/words.dart";
import "package:quiz_app/src/core/style/text_style.dart";

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
          body: Center(
        child: Text(
          Words.welcome.tr(context),
          style: AppTextStyle().appNameQuiz?.copyWith(
            fontSize: 50
          ),
        ),
      ));
}
