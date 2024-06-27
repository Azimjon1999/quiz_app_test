import 'dart:developer';

import 'package:flutter/material.dart';

import '../../../../core/style/images.dart';

class ProfileImageWidget extends StatelessWidget {
  const ProfileImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: InkWell(
          onTap: () {
            log("rasm tanlash");
          },
          child: AppImages.userIcon2),
    );
  }
}
