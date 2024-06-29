import "package:flutter/material.dart";
import "package:go_router/go_router.dart";
import "package:quiz_app/src/core/routes/app_route_name.dart";
import "package:quiz_app/src/core/style/colors.dart";
import "package:quiz_app/src/core/widget/appbar_leading_widget.dart";
import "package:quiz_app/src/feature/profile/presentation/widgets/profile_category_widget.dart";
import "package:quiz_app/src/feature/profile/presentation/widgets/profile_image_widget.dart";
import "package:quiz_app/src/feature/profile/presentation/widgets/profile_pageview_widget.dart";
import "package:quiz_app/src/feature/profile/presentation/widgets/profile_userresult_widget.dart";

import "../../../../core/widget/scaffold_with_background_widget.dart";

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key, g});

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
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: [
                const SizedBox(
                  height: 60,
                ),
                // const ProfileBackWidget(),
                AppbarLeadingWidget(func: () {
                  context.go(AppRouteName.homePage);
                }),
                const SizedBox(
                  height: 10,
                ),
                const ProfileImageWidget(),
                const SizedBox(
                  height: 20,
                ),
                const ProfileUserResultWidget(),
                const SizedBox(
                  height: 13,
                ),
                ProfileCategoryWidget(),
                const SizedBox(
                  height: 13,
                ),
                const ProfilePageViewWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
