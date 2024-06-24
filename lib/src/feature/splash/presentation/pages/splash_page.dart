import "package:flutter/material.dart";
import "package:quiz_app/src/core/localization/words.dart";


class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
          body: Center(
        child: Text(
          Words.welcome.tr(context),
        ),
      ));
}
