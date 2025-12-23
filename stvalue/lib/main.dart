import 'package:flutter/material.dart';
import 'package:stvalue/apresentation/controllers/theme_controller.dart';
import 'package:stvalue/pages/home_page.dart';

ThemeController themeController = new ThemeController();

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: themeController,
      builder: (context, value, child) {
        return MaterialApp(
          home: HomePage(),
          theme: value? ThemeData.dark() : ThemeData.light()
        );
      }
    );
  }
}

