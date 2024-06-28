import "package:flutter/material.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";
import "package:quiz_app/src/core/widget/app_material_context.dart";
import "package:quiz_app/src/core/widget/app_title_widget.dart";
import "package:quiz_app/src/core/widget/language_widget.dart";
import "package:quiz_app/src/core/widget/scaffold_with_background_widget.dart";


class ChooseLanguagePage extends StatelessWidget {
  const ChooseLanguagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScaffoldWithBackgroundWidget(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 34),
          child: Column(
            children: [
              SizedBox(
                height: 220.h,
              ),
              const AppTitleWidget(),
              SizedBox(
                height: 66.h,
              ),
              LanguagesWidget(
                localController: localController,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
