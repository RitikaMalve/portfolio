import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portpolio/responsive/screenSizeConfig.dart';

class Textbuttonforappbar extends StatefulWidget {
  final String textforbutton;
  Textbuttonforappbar({super.key, required this.textforbutton});

  @override
  State<Textbuttonforappbar> createState() => _TextbuttonforappbarState();
}

class _TextbuttonforappbarState extends State<Textbuttonforappbar> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => isHovered = true),
      onExit: (_) => setState(() => isHovered = false),
      child: AnimatedContainer(
        duration: Duration(milliseconds: 200),
        transform: isHovered ? Matrix4.translationValues(0, -5, 0) : Matrix4.translationValues(0, 0, 0),
        child: TextButton(
          child: Text(
            widget.textforbutton,
            style: TextStyle(
              color: Colors.white, // Change color on hover
              fontWeight: isHovered ?  FontWeight.bold : FontWeight.w300,
              fontFamily: ScreenSizeConfig.fontfamilyN,
              letterSpacing: 1.2,
              fontSize: 21,
            ),
          ),
          onPressed: () {},
        ),
      ),
    );
  }
}
