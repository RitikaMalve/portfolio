import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portpolio/custom/textbuttonforappbar.dart';
import 'package:portpolio/main.dart';
import 'package:portpolio/responsive/theamecolor.dart';
import 'package:provider/provider.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    final thmode = Provider.of<DarkMode>(context);
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.transparent,
      appBar: AppBar(

          //excludeHeaderSemantics: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
          actions: [
            Row(
              children: [
                  Textbuttonforappbar(textforbutton: "Home"),
                Textbuttonforappbar(textforbutton: "Accounts "),
                Textbuttonforappbar(textforbutton: "Service "),
                Textbuttonforappbar(textforbutton: "download cv "),
                IconButton(
                  icon: Icon(
                    thmode.darkMode ? Icons.brightness_3 : Icons.wb_sunny,
                    color: Theme.of(context).iconTheme.color,
                  ),
                  onPressed: () {
                    thmode.changemode();
                  },
                ),
                SizedBox(width: 16), // Add some space after the icon
              ],
            )
          ]),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            //stops: [0.1, 0.5, 0.7, 0.9],
            colors: [
              Theme.of(context).primaryColor,
              //  Theme.of(context).primaryColor,
              //  Theme.of(context).canvasColor,
              Theme.of(context).canvasColor,
            ],
          ),
        ),
        // color: Theme.of(context).primaryColor,
      ),
    );
  }
}
