import "package:flutter/material.dart";
import "package:quiz_app/src/core/style/colors.dart";
import "package:quiz_app/src/feature/profile/presentation/widgets/profile_back_widget.dart";
import "package:quiz_app/src/feature/profile/presentation/widgets/profile_category_widget.dart";
import "package:quiz_app/src/feature/profile/presentation/widgets/profile_image_widget.dart";
import "package:quiz_app/src/feature/profile/presentation/widgets/profile_reyting_widget.dart";
import "package:quiz_app/src/feature/profile/presentation/widgets/profile_userresult_widget.dart";
import "../../../../core/widget/scaffold_with_background_widget.dart";

class ProfilePage extends StatelessWidget {

   ProfilePage({super.key, g});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: AppColors.transparent,
      appBar: AppBar(
        backgroundColor: AppColors.transparent,
      ),
      body:  ScaffoldWithBackgroundWidget(
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: [
                SizedBox(
                  height: 60,
                ),
                ProfileBackWidget(),
                SizedBox(
                  height: 10,
                ),
                ProfileImageWidget(),
                SizedBox(
                  height: 20,
                ),
                ProfileUserResultWidget(),
                SizedBox(
                  height: 13,
                ),
                ProfileCategoryWidget(),
                SizedBox(
                  height: 13,
                ),
                ProfileReytingWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
