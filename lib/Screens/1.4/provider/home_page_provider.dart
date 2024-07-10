import 'package:flutter/material.dart';

class HomePageProvider extends ChangeNotifier {
  bool isDark = false;
  String mode = '';

  void themeChange() {
    isDark = !isDark;
    notifyListeners();
  }
}