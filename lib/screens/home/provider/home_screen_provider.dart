import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

class HomeScreenProvider with ChangeNotifier {
  //PageController for HomeScreen PageView
  final PageController pageController = PageController(initialPage: 0);

  int _currentPageIndex = 0;
  final int pageCount = 2;

  ///Returns the currentPageIndex from the [PageController]
  int get currentPageIndex => _currentPageIndex;

  ///Sets new PageIndex and animates to new Page
  set currentPageIndex(int newIndex) {
    print("setcurrentindex");
    if (newIndex != _currentPageIndex) {
      _currentPageIndex = newIndex;
      notifyListeners();
      pageController.animateToPage(
        currentPageIndex,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  ///Updates the [currentPageIndex]
  void onScroll(int newIndex) {
    _currentPageIndex = newIndex;
    notifyListeners();
  }
}
