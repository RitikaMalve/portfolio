import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portpolio/custom/textbuttonforappbar.dart';
import 'package:portpolio/responsive/screenSizeConfig.dart';
import 'package:portpolio/responsive/theamecolor.dart';
import 'package:provider/provider.dart';

class Appbars extends StatefulWidget {
  const Appbars({super.key});

  @override
  State<Appbars> createState() => _AppbarsState();
}

class _AppbarsState extends State<Appbars> {
  @override
  Widget build(BuildContext context) {
    final thmode = Provider.of<DarkMode>(context);
    return Row(
      children: [
        Textbuttonforappbar(textforbutton: "Home"),
        Textbuttonforappbar(textforbutton: "Project"),
        Textbuttonforappbar(textforbutton: "About"),
        Textbuttonforappbar(textforbutton: "Contact"),
        Textbuttonforappbar(textforbutton: "Hire me"),
        IconButton(
          icon: Icon(
            thmode.darkMode ? Icons.brightness_3 : Icons.wb_sunny,
            color: Colors.white,
          ),
          onPressed: () {
            thmode.changemode();
          },
        ),
        SizedBox(width: 16), // Add some space after the icon
      ],
    );
  }
}
