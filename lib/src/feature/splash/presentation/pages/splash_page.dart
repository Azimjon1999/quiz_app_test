import "package:flutter/material.dart";
import "package:quiz_app/src/core/style/colors.dart";
import "package:quiz_app/src/core/widget/custom_box_widget.dart";

// import "../../../../core/localization/words.dart";
import "../../../../core/widget/scaffold_with_background_widget.dart";

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: AppColors.transparent,
      appBar: AppBar(
        backgroundColor: AppColors.transparent,
      ),
      body: const ScaffoldWithBackgroundWidget(
        child: Center(
          child: CustomBoxWidget(
            height: 100,
            width: 200,
            child: Center(
              child: Text(
                'Quiz',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
