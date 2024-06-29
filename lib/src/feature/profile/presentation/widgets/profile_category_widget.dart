import 'package:flutter/material.dart';
import 'package:quiz_app/src/core/style/colors.dart';
import 'package:quiz_app/src/core/widget/custom_box_widget.dart';

import '../../../../core/localization/words.dart';

class ProfileCategoryWidget extends StatelessWidget {
  bool isBlack = false ;
Function() onTap;
Function() onTap1;
   ProfileCategoryWidget({super.key,  required this.onTap, required this.onTap1});

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
              onTap: () => onTap(),
              child:  Text(
                  Words.histories.tr(context),
                style: TextStyle(
                    fontFamily: "IrishGrover",
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color:isBlack? AppColors.black : AppColors.c0048B5),
              ),
            ),
            InkWell(
              onTap: () => onTap1(),
              child:  Text(
                Words.leaderboard.tr(context),
                style: TextStyle(
                    fontFamily: "IrishGrover",
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color:isBlack? AppColors.c0048B5 : AppColors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
