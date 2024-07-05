import "package:flutter/material.dart";
import "../../../../core/widget/scaffold_with_background_widget.dart";
import "../widgets/multiplayer_draw_result_widget.dart";


class MultiPlayerResultPage extends StatelessWidget {
  const MultiPlayerResultPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {


    return const Scaffold(
      body: ScaffoldWithBackgroundWidget(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 22),
          child: MultiplayerDrawResultWidget()
        ),
      ),
    );
  }
}
