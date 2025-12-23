
import 'package:flutter/cupertino.dart';

class ThemeController extends ValueNotifier<bool>{

  ThemeController() : super(false);

  void toggle(){
    value = !value;
  }

}