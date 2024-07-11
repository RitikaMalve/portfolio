// Define custom colors for light mode

import 'package:flutter/material.dart';
import 'package:portpolio/main.dart';

class Theamecolor {
 
  final darkTheme = ThemeData(
    //opposite
    primaryColor: maincolor,
    primaryColorLight: Colors.white,
   //samebothside
    primaryColorDark: Colors.white,
    secondaryHeaderColor: maincolor,
    //themchanger
    canvasColor: Colors.black,
    //background color
    focusColor: maincolor,
      hintColor: Colors.white,
    // splashColor: Color(0xFFF5E5EE)
  );
   // ////////////////////////Define custom colors for light mode///////////////////
  final lightTheme = ThemeData(
    //opposite
    primaryColor: Colors.white,
    primaryColorLight: maincolor,

    //samebothside
    primaryColorDark: Colors.white,
    secondaryHeaderColor: maincolor,
   //themchanger
    canvasColor: maincolor,
    //background color
    focusColor: Color(0xFFF5E5EE),
    hintColor: Color.fromARGB(255, 183, 41, 205),
    // splashColor: Color.fromARGB(255, 104, 48, 113),
  );


}

class DarkMode with ChangeNotifier {
  bool darkMode = true;

  void changemode() {
    darkMode = !darkMode;
    notifyListeners();
  }
}
