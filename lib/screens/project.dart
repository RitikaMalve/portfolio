import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portpolio/component/project/hoverablecontainer.dart';
import 'package:portpolio/main.dart';
import 'package:portpolio/responsive/responsive.dart';
import 'package:portpolio/responsive/screenSizeConfig.dart';

class Project extends StatefulWidget {
  const Project({super.key});

  @override
  State<Project> createState() => _ProjectState();
}

class _ProjectState extends State<Project> {
  int? hoveredIndex;
  int? clickedIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).focusColor,
      //   height: ScreenSizeConfig.ScreenHeight,
      width: ScreenSizeConfig.ScreenWidth,
      child: Padding(
        padding: EdgeInsets.only(top: ScreenSizeConfig.ScreenHeight * 0.02),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Project",
              style: TextStyle(
                fontSize: Responsive.isMobile(context)
                    ? ScreenSizeConfig.ScreenWidth * 0.08
                    : ScreenSizeConfig.ScreenWidth * 0.026,
                fontFamily: ScreenSizeConfig.fontfamilyD,
                color: Theme.of(context).primaryColorLight,
                fontWeight: FontWeight.w300,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: ScreenSizeConfig.ScreenHeight / 9,
                  left: ScreenSizeConfig.ScreenWidth * 0.02,
                  right: ScreenSizeConfig.ScreenWidth * 0.02,
                  bottom: ScreenSizeConfig.ScreenHeight * 0.02),
              child: Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                runAlignment: WrapAlignment.center,
                spacing: 50.0,
                runSpacing: 35.0,
                children: <Widget>[
                  customProject(0),
                  customProject(1),
                  customProject(2),
                  customProject(3),
                  customProject(4),
                  customProject(5),
                  customProject(6),
                  // Responsive.isDesktop(context) ? customBox() : mobileBox(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget customProject(int index) {
    return HoverableContainer(
      index: index,
      height: 260,
      // ScreenSizeConfig.ScreenHeight * 0.37,
      width: 240,
      //ScreenSizeConfig.ScreenWidth * 0.18,
      imagePath: "assets/detingapp.png",
      text: "Dating App",
      isHovered: hoveredIndex == index,
      isClicked: clickedIndex == index,
      onHover: (isHovered) {
        setState(() {
          if (isHovered) {
            hoveredIndex = index;
          } else {
            hoveredIndex = null;
          }
        });
      },
      onClick: () {
        setState(() {
          clickedIndex = index;
        });
      },
    );
  }
}
