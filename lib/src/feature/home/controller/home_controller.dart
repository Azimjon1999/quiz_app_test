import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../core/routes/app_route_name.dart';

class HomeController extends ChangeNotifier {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  void openDrawer() {
    scaffoldKey.currentState!.openDrawer();
  }

  void navigateToChangeInfo(BuildContext context) {
    context.go('${AppRouteName.homePage}${AppRouteName.updateInfoPage}');
  }

   void navigateToSinglePlayer(BuildContext context) {
    context.go('${AppRouteName.homePage}${AppRouteName.singlePlayerPage}');
  }
  void navigateToMultiPlayer(BuildContext context) {
    context.go('${AppRouteName.homePage}${AppRouteName.multiPlayerPage}');
  }

  void navigateToProfile(BuildContext context) {
    context.go('${AppRouteName.homePage}${AppRouteName.profilePage}');
  }
}
