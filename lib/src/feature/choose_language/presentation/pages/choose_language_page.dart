import "package:flutter/material.dart";
import "package:quiz_app/src/core/style/colors.dart";

import "../../../../core/localization/words.dart";
import "../../../../core/widget/scaffold_with_background_widget.dart";

class ChooseLanguagePage extends StatelessWidget {
  const ChooseLanguagePage({super.key});

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
          child: Text(
            Words.welcome.tr(context),
          ),
        ),
      ),
    );
  }
}
