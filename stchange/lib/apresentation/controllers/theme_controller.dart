
import 'package:flutter/cupertino.dart';

class ThemeController extends ChangeNotifier{

  bool isDarkTheme = false;

  void toogle(){
    isDarkTheme = !isDarkTheme;
    notifyListeners();
  }

}