import 'package:flutter/cupertino.dart';

class ThemeChange extends ChangeNotifier {
  bool isDark = false;

  void changeTheme() {
    isDark = !isDark;
    notifyListeners();
  }

  bool getTheme() {
    return isDark;
  }
}
