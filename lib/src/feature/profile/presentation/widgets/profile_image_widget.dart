import 'package:flutter/material.dart';

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
