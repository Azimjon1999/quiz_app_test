import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:quiz_app/src/core/style/colors.dart';
import 'package:quiz_app/src/core/widget/custom_box_widget.dart';

import '../../../../core/localization/words.dart';

class ProfileCategoryWidget extends StatelessWidget {


   ProfileCategoryWidget({super.key, });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: CustomBoxWidget(
        width: double.infinity,
        height: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
              onTap: () {
                log("black");
              },
              child:  Text(
                  Words.histories.tr(context),
                style: TextStyle(
                    fontFamily: "IrishGrover",
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: AppColors.black),
              ),
            ),
            InkWell(
              onTap: () {
                log("blue");
              },
              child:  Text(
                Words.leaderboard.tr(context),
                style: TextStyle(
                    fontFamily: "IrishGrover",
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: AppColors.c0048B5),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
