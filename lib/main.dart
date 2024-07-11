import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portpolio/responsive/theamecolor.dart';
import 'package:provider/provider.dart';
import 'package:portpolio/screens/Mainscreen.dart';

Color maincolor = Color.fromARGB(255, 27, 15, 29);
Color whitecolor = Colors.white;
Color blackcolor = Colors.black ;
void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => DarkMode(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final thmode = Provider.of<DarkMode>(context);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dark Mode',
      theme: thmode.darkMode
          ? Theamecolor().darkTheme
          : Theamecolor().lightTheme, // Apply the theme based on darkMode value
      home: Mainscreen(),
    );
  }
}
