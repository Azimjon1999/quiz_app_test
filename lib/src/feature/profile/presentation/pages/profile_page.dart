import "package:flutter/material.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";
import "package:go_router/go_router.dart";
import "package:provider/provider.dart";
import "package:quiz_app/src/core/style/colors.dart";
import "package:quiz_app/src/core/widget/appbar_leading_widget.dart";
import "package:quiz_app/src/feature/profile/presentation/widgets/profile_category_widget.dart";
import "package:quiz_app/src/feature/profile/presentation/widgets/profile_image_widget.dart";
import "package:quiz_app/src/feature/profile/presentation/widgets/profile_userresult_widget.dart";
import "../../../../core/widget/custom_box_big_widget.dart";
import "../../../../core/widget/scaffold_with_background_widget.dart";
import "../../controller/profile_controller.dart";
import "../widgets/profile_history_widget.dart";
import "../widgets/profile_reyting_widget.dart";

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
                  context.pop();
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
                ProfileCategoryWidget(
                ),
                const SizedBox(
                  height: 13,
                ),
                 Consumer<ProfileController>(
                     builder: (context, model, child){
                       return   Padding(
                         padding: EdgeInsets.symmetric(horizontal: 10.h),
                         child: CustomBoxBigWidget(
                             width: double.infinity,
                             height: 450.h,

                             child: PageView(
                               physics: NeverScrollableScrollPhysics(), // Scrollni o'chirish
                               controller: model.pageController,
                               // onPageChanged: (index) {
                               //   model.goToPage(index);
                               // },
                               children:  [
                                 const ProfileHistoryWidget(),
                                 ProfileReytingWidget()
                               ],

                             )
                         ),
                       );
                     },
                     ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
