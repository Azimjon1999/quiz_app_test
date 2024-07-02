import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz_app/src/core/style/colors.dart';

import '../../controller/profile_controller.dart';

class ProfileCategoryWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<ProfileController>(
      builder: (context, model, child) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Container(
            width: double.infinity,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
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
