import 'package:flutter/material.dart';

import '../../../../core/style/colors.dart';

class ProfileListTileWidget extends StatelessWidget {
  const ProfileListTileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: ListTile(
        leading: Text("Azimjon",style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w400,
            color: AppColors.c0048B5,
            fontFamily: "IrishGrover"),),
        trailing: Text("20",style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w400,
            color: AppColors.c0048B5,
            fontFamily: "IrishGrover"),),
      ),
    );
  }
}
