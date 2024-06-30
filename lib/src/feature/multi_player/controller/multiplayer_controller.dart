import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:quiz_app/src/core/routes/app_route_name.dart';

class MultiPlayerPageController extends ChangeNotifier {
  void navigateToMultiPlayerWaiting(
    BuildContext context,
  ) {
    context.push(
      '${AppRouteName.homePage}${AppRouteName.multiPlayerPage}/${AppRouteName.multiPlayerWaiting}',
    );
  }

  void navigateToMultiPlayerQuiz(
    BuildContext context,
  ) {
    context.push(
      '${AppRouteName.homePage}${AppRouteName.multiPlayerPage}/${AppRouteName.multiPlayerWaiting}/${AppRouteName.multiPlayerQuiz}',
    );
  }

  void navigateToMultiPlayerResult(BuildContext context) {
    context.push(
      '${AppRouteName.homePage}${AppRouteName.multiPlayerPage}/${AppRouteName.multiPlayerWaiting}/${AppRouteName.multiPlayerQuiz}/${AppRouteName.multiPlayerResult}',extra: <int>[1,2,3]
    );
  }
  void navigateToMultiPlayerPage(BuildContext context) {
    context.go(
      '${AppRouteName.homePage}${AppRouteName.multiPlayerPage}',
    );
  }
}
