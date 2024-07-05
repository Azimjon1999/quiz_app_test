import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// import 'package:provider/provider.dart';
import 'package:quiz_app/src/core/style/colors.dart';
import 'package:quiz_app/src/core/widget/custom_box_widget.dart';

import '../../controller/profile_controller.dart';

class ProfileCategoryWidget extends StatelessWidget {
  const ProfileCategoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ProfileController>(
      builder: (context, model, child) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: CustomBoxWidget(
            width: double.infinity,
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () => model.goToPage(0),
                  child: Text(
                    'Histories', // Words.histories.tr(context),
                    style: TextStyle(
                      fontFamily: "IrishGrover",
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: model.selectedIndex == 0 ? AppColors.c0048B5 : AppColors.black,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () => model.goToPage(1),
                  child: Text(
                    'Leaderboard', // Words.leaderboard.tr(context),
                    style: TextStyle(
                      fontFamily: "IrishGrover",
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: model.selectedIndex == 1 ? AppColors.c0048B5 : AppColors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
