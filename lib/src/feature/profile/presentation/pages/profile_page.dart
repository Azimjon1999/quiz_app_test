import "package:flutter/material.dart";
import "package:quiz_app/src/core/style/colors.dart";

import "../../../../core/widget/scaffold_with_background_widget.dart";

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: AppColors.transparent,
      appBar: AppBar(
        backgroundColor: AppColors.transparent,
      ),
      body: const ScaffoldWithBackgroundWidget(
        child: Center(

        ),
      ),
    );
  }
}
