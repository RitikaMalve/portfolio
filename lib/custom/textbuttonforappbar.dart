import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Textbuttonforappbar extends StatefulWidget {
  String textforbutton ; 
   Textbuttonforappbar({super.key , required this.textforbutton});

  @override
  State<Textbuttonforappbar> createState() => _TextbuttonforappbarState();
}

class _TextbuttonforappbarState extends State<Textbuttonforappbar> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
                  child: Text(
                   widget.textforbutton,
                    style: TextStyle(
                        color: Theme.of(context).iconTheme.color,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  onPressed: () {},
                );
  }
}