import "package:flutter/material.dart";
import "package:go_router/go_router.dart";
import "package:quiz_app/src/core/widget/appbar_leading_widget.dart";
import "package:quiz_app/src/core/widget/scaffold_with_background_widget.dart";

class SinglePlayerPage extends StatelessWidget {
  const SinglePlayerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScaffoldWithBackgroundWidget(
        child: Column(
          children: [
            AppbarLeadingWidget(
              func: () {
                context.pop();
              },
            ),
          ],
        ),
      ),
    );
  }
}
