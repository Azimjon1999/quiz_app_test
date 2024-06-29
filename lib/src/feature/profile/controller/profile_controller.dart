import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

import '../../../core/routes/app_route_name.dart';

class ProfileController extends ChangeNotifier{

  bool isBlack = false;

  void navigateToHome(BuildContext context) {
    context.go(AppRouteName.homePage);
  }

  void onTap(BuildContext context) {
   isBlack = true;
   notifyListeners();

  }
  void onTap1(BuildContext context) {
    isBlack = false;
    notifyListeners();

  }

}