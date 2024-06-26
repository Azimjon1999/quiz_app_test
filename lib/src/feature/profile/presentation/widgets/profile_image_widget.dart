import 'package:flutter/material.dart';
import 'package:quiz_app/src/core/style/images.dart';

class ProfileImageWidget extends StatelessWidget {
  const ProfileImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child:  CircleAvatar(
        // backgroundImage: AppImages.userIcon,
      ),
    );
  }
}
