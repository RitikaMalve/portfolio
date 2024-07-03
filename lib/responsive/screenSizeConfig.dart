import 'package:flutter/cupertino.dart';

class ScreenSizeConfig {
  static late double ScreenWidth;
  static late double ScreenHeight;
  static String? fontfamilyM;
  static String? fontfamilyN;
  static String? fontfamilyR;
  static late double iconSize;
  static late double titleTextsize;
  static const double defaultPadding = 30.0;
  static void init(BuildContext context) {
    ScreenWidth = MediaQuery.of(context).size.width;
    ScreenHeight = MediaQuery.of(context).size.height;
    iconSize = ScreenWidth * 0.07;
    fontfamilyM = "Montserrat";
    fontfamilyN = "Nunito";
    fontfamilyR = "Roboto";
  }
}
