import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:quiz_app/src/core/routes/app_route_name.dart';

class MultiPlayerPageController extends ChangeNotifier {

  void navigateToMultiPlayerPage(BuildContext context) {
    context.go(
      '${AppRouteName.homePage}${AppRouteName.multiPlayerPage}',
    );
  }



  void navigateToMultiPlayerWaiting(
    BuildContext context,
  ) {
    context.push(
      '${AppRouteName.homePage}${AppRouteName.multiPlayerPage}/${AppRouteName.multiPlayerWaiting}',
    );
  }

  void navigateToMultiPlayerGetReady(
      BuildContext context,
      ) {
    context.push(
      '${AppRouteName.homePage}${AppRouteName.multiPlayerPage}/${AppRouteName.multiPlayerGetReady}',
    );
  }

  void navigateToMultiPlayerQuiz(
      BuildContext context,
      ) {
    context.push(
      '${AppRouteName.homePage}${AppRouteName.multiPlayerPage}/${AppRouteName.multiPlayerQuiz}',
    );
  }



  void navigateToMultiPlayerResult(BuildContext context) {
    context.push(
      '${AppRouteName.homePage}${AppRouteName.multiPlayerPage}/${AppRouteName.multiPlayerResult}'
    );
  }

}
