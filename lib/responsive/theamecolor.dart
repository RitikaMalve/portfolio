// Define custom colors for light mode

import 'package:flutter/material.dart';

class Theamecolor {
  final lightTheme = ThemeData(
    primaryColor: Colors.white,
    canvasColor: Color(0xFF413A6C),
    iconTheme: IconThemeData(
      color: Color(0xFF413A6C)
    )
  );

// Define custom colors for dark mode
  final darkTheme = ThemeData(
    primaryColor: Color(0xFF413A6C),
    canvasColor: Colors.black,
    iconTheme: IconThemeData(
      color: Colors.white
    )
  );
  
}

class DarkMode with ChangeNotifier {
  bool darkMode = true;

  void changemode() {
    darkMode = !darkMode;
    notifyListeners();
  }
}
