import 'package:flutter/material.dart';
import 'package:stchange/apresentation/controllers/theme_controller.dart';
import 'package:stchange/pages/home_page.dart';

final ThemeController themeController = new ThemeController();

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
        listenable: themeController,
        builder: (context, child) {
          return MaterialApp(
            theme: themeController.isDarkTheme ? ThemeData.dark() : ThemeData.light(),
              home: HomePage()
          );
        }
    );
  }
}
