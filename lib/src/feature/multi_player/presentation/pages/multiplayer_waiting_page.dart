import "package:flutter/material.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";
import "package:go_router/go_router.dart";
import "package:provider/provider.dart";
import "package:quiz_app/src/core/localization/words.dart";
import "../../../../core/widget/appbar_leading_widget.dart";
import "../../../../core/widget/scaffold_with_background_widget.dart";
import "../../controller/multiplayer_controller.dart";
import "../widgets/multiplayer_title_widget.dart";
import "../widgets/multiplayer_titleblue_widget.dart";


class MultiPlayerWaitingPage extends StatefulWidget {
  const MultiPlayerWaitingPage({super.key});

  @override
  State<MultiPlayerWaitingPage> createState() => _MultiPlayerWaitingPageState();
}

class _MultiPlayerWaitingPageState extends State<MultiPlayerWaitingPage> {

  Future<void> splash() async {
    await Future.delayed(const Duration(seconds: 3));
   final provider = Provider.of<MultiPlayerPageController>(context, listen: false);
    provider.navigateToMultiPlayerQuiz(context);
  }

  @override
  void initState() {
    splash();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // final provider = Provider.of<MultiPlayerPageController>(context);
    return Scaffold(
      body: ScaffoldWithBackgroundWidget(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22),
          child: Column(
            children: [
              SizedBox(height: 46.h),
              AppbarLeadingWidget(
                func: () {
                  context.pop();
                },
              ),
              SizedBox(height: 20.h),
              MultiplayerTitleblueWidget(
                title: Words.waitforhimtoaccept.tr(context),
              ),
              SizedBox(height: 100.h),
              MultiplayerTitleWidget(
                titleLarge: Words.yourID.tr(context),
                titleMedium: "000000001",
              ),
              SizedBox(height: 120.h),
              MultiplayerTitleWidget(
                titleLarge: Words.searchingforcounter.tr(context),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

