import 'package:flutter/cupertino.dart';


class ProfileController extends ChangeNotifier{

  final PageController pageController = PageController();
  int selectedIndex = 0;



  void goToPage(int index) {
    selectedIndex = index;
    pageController.animateToPage(
      index,
      duration: Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
    notifyListeners();
  }

}