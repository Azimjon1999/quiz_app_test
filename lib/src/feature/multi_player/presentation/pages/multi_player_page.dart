import "package:flutter/material.dart";
import "package:quiz_app/src/core/style/colors.dart";


class MultiPlayerPage extends StatelessWidget {
  const MultiPlayerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: AppColors.transparent,
      appBar: AppBar(
        backgroundColor: AppColors.transparent,
      ),

    );
  }
}
