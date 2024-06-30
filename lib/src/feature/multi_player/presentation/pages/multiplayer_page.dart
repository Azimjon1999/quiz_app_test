import "package:flutter/material.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";
import "package:go_router/go_router.dart";
import "package:provider/provider.dart";
import "package:quiz_app/src/feature/multi_player/controller/multiplayer_controller.dart";
import "../../../../core/localization/words.dart";
import "../../../../core/style/text_style.dart";
import "../../../../core/widget/appbar_leading_widget.dart";
import "../../../../core/widget/custom_button_widget.dart";
import "../../../../core/widget/scaffold_with_background_widget.dart";
import "../widgets/multiplayer_leaderboard_widget.dart";
import "../widgets/multiplayer_title_widget.dart";


class MultiPlayerPage extends StatelessWidget {
  const MultiPlayerPage({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<MultiPlayerPageController>(context);
    // final provider = Provider.of<MultiPlayerPageController>(context);
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
               MultiplayerTitleWidget(titleLarge: Words.yourID.tr(context), titleMedium: "000000001"),
              SizedBox(height: 20.h),
              const MultiplayerLeaderboardWidget(),
              SizedBox(height: 40.h),
              CustomButtonWidget(
                func: () =>provider.navigateToMultiPlayerWaiting(context),
                child: Text(
                  Words.playNow.tr(context),
                  style: AppTextStyle().users?.copyWith(fontSize: 30.sp),
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
