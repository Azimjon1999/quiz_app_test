import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:quiz_app/src/core/routes/app_route_name.dart';

class SinglePlayerController extends ChangeNotifier {

  void navigateToSingleQuiz(BuildContext context, String theme) {
    context.push(
      '${AppRouteName.homePage}${AppRouteName.singlePlayerPage}/${AppRouteName.singlePlayerQuiz}',
      extra: theme,
    );
  }

  void navigateToHome(BuildContext context) {
    context.go(
      AppRouteName.homePage,
    );
  }

  void navigateToSinglePayer(BuildContext context) {
    context.go('${AppRouteName.homePage}${AppRouteName.singlePlayerPage}');
  }

  void navigateToSingleQuziResult(
    BuildContext context,
    List<int> dataResult,
  ) {
    context.push(
      '${AppRouteName.homePage}${AppRouteName.singlePlayerPage}/${AppRouteName.singlePlayerQuiz}/${AppRouteName.singlePlayerQuizResult}',
      extra: dataResult,
    );
  }

}
