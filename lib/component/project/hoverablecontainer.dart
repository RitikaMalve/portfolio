import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portpolio/responsive/screenSizeConfig.dart';

class HoverableContainer extends StatelessWidget {
  final int index;
  final double height;
  final double width;
  final String imagePath;
  final String text;
  final bool isHovered;
  final bool isClicked;
  final void Function(bool) onHover;
  final void Function() onClick;

  const HoverableContainer({
    required this.index,
    required this.height,
    required this.width,
    required this.imagePath,
    required this.text,
    required this.isHovered,
    required this.isClicked,
    required this.onHover,
    required this.onClick,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => onHover(true),
      onExit: (_) => onHover(false),
      child: GestureDetector(
        onTap: onClick,
        child: AnimatedContainer(
          duration: Duration(milliseconds: 200),
          transform: isHovered || isClicked
              ? Matrix4.translationValues(0, -10, 0)
              : Matrix4.translationValues(0, 0, 0),
          height: height,
          width: width,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Theme.of(context).primaryColor.withOpacity(0.3),
                Theme.of(context).hintColor.withOpacity(0.4),
              ],
            ),
            border: Border.all(width: 1, color: Theme.of(context).hintColor),
            borderRadius: BorderRadius.all(Radius.circular(25)),
            boxShadow: isHovered || isClicked
                ? [
                    BoxShadow(
                      color: Theme.of(context).hintColor.withOpacity(0.2),
                      blurRadius: 10,
                      offset: Offset(0, 10),
                    ),
                  ]
                : [],
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  imagePath,
                  height: height * 0.8,
                ),
                Text(
                  text,
                  style: TextStyle(
                    fontSize: ScreenSizeConfig.ScreenWidth * 0.02,
                    fontFamily: ScreenSizeConfig.fontfamilyN,
                    color: Theme.of(context).hintColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}