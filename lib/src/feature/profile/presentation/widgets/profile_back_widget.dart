import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:quiz_app/src/core/style/colors.dart';
import 'package:quiz_app/src/core/style/images.dart';
import 'package:quiz_app/src/core/widget/custom_button_widget.dart';

class ProfileBackWidget extends StatelessWidget {
  const ProfileBackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return   Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
       CustomButtonWidget(
           func: (){
             log("back");
           },
           height: 60,
         witdh: 68,
         buttonColor: AppColors.white,
           child: AppImages.back,
       )

      ],
    );
  }
}