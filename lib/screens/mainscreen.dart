import 'package:flutter/material.dart';
import 'package:portpolio/component/Homescreencomponet/appbar.dart';

import 'package:portpolio/custom/textbuttonforappbar.dart';
import 'package:portpolio/responsive/responsive.dart';
import 'package:portpolio/responsive/screenSizeConfig.dart';
import 'package:portpolio/responsive/theamecolor.dart';
import 'package:portpolio/screens/project.dart';
import 'package:provider/provider.dart';
import 'package:portpolio/screens/homescreen.dart';

class Mainscreen extends StatefulWidget {
  const Mainscreen({super.key});

  @override
  State<Mainscreen> createState() => _MainscreenState();
}

class _MainscreenState extends State<Mainscreen> {
  
  bool showMenu = false;

  @override
  Widget build(BuildContext context) {
    ScreenSizeConfig.init(context);
    final thmode = Provider.of<DarkMode>(context);
    
   
    return Scaffold(
    
     
      backgroundColor: Colors.transparent,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Homescreen( ),
            Project(),
          ],
        ),
      ),
    );
  }
}
