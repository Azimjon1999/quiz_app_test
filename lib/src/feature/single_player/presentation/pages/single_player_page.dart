import "package:flutter/material.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";
import "package:go_router/go_router.dart";
import "package:provider/provider.dart";
import "package:quiz_app/src/core/widget/app_title_widget.dart";
import "package:quiz_app/src/core/widget/appbar_leading_widget.dart";
import "package:quiz_app/src/core/widget/scaffold_with_background_widget.dart";
import "package:quiz_app/src/feature/single_player/controller/single_player_controller.dart";
import "package:quiz_app/src/feature/single_player/presentation/widgets/single_buttons_widget.dart";
import "package:quiz_app/src/feature/single_player/presentation/widgets/single_title_widget.dart";


class SinglePlayerPage extends StatelessWidget {
  const SinglePlayerPage({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<SinglePlayerController>(context);
    return Scaffold(
      body: ScaffoldWithBackgroundWidget(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22),
          child: Column(
            children: [
              SizedBox(height: 46.h),
              AppbarLeadingWidget(
                func: () {
                  context.pop();
                },
              ),
              SizedBox(height: 10.h),
              const SingleTitleWidget(),
              SizedBox(height: 50.h),
              const AppTitleWidget(),
              SizedBox(height: 80.h),
              SingleButtonsWidget(
                onTap1: () => provider.navigateToSingleQuiz(context, 'Sport'),
                onTap2: () => provider.navigateToSingleQuiz(context, 'Cinema'),
                onTap3: () => provider.navigateToSingleQuiz(context, 'History'),
                onTap4: () => provider.navigateToSingleQuiz(context, 'Music'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
