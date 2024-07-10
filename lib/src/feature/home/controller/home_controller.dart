import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:quiz_app/src/core/storage/app_storage.dart';

import '../../../core/routes/app_route_name.dart';

class HomeController extends ChangeNotifier {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  void openDrawer() {
    scaffoldKey.currentState!.openDrawer();
  }

  void onLogout() async {
    await AppStorage.delete(key: StorageKey.acessToken);
    await AppStorage.delete(key: StorageKey.refToken);
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
