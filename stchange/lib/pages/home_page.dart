import 'package:flutter/material.dart';
import 'package:stchange/main.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListenableBuilder(
          listenable: themeController,
          builder: (context, child) {
            return Switch(value: themeController.isDarkTheme, onChanged: (_){
              themeController.toogle();
            });
          }
        ),
      ),
    );
  }
}
