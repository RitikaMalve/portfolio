import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portpolio/component/Homescreencomponet/appbar.dart';
import 'package:portpolio/component/Drawer/drawer.dart';
import 'package:portpolio/custom/textbuttonforappbar.dart';
import 'package:portpolio/main.dart';
import 'package:portpolio/responsive/responsive.dart';
import 'package:portpolio/responsive/screenSizeConfig.dart';
import 'package:portpolio/responsive/theamecolor.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

class Homescreen extends StatefulWidget {
   
  const Homescreen({super.key , });

  @override
  State<Homescreen> createState() => HomescreenState();
}

class HomescreenState extends State<Homescreen> {
  bool _showHello = false;
  bool _showName = false;
  bool _showDescription = false;
  bool _showButton = false;

  @override
  void initState() {
    super.initState();
    _animateText();
   
  }

  void _animateText() async {
    await Future.delayed(const Duration(milliseconds: 500));
    setState(() {
      _showHello = true;
    });

    await Future.delayed(const Duration(seconds: 1));
    setState(() {
      _showName = true;
    });

    await Future.delayed(const Duration(seconds: 2));
    setState(() {
      _showDescription = true;
    });

    await Future.delayed(const Duration(seconds: 5));
    setState(() {
      _showButton = true;
    });
  }
 

  @override
  Widget build(BuildContext context) {
    ScreenSizeConfig.init(context);
    final thmode = Provider.of<DarkMode>(context);
    
    return Container(
      height: ScreenSizeConfig.ScreenHeight,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/laptop.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
       
        backgroundColor: Colors.transparent,
        extendBodyBehindAppBar: true,
         appBar: AppBar(
        backgroundColor: Colors.transparent,
        scrolledUnderElevation: 0,
        elevation: 0,
        iconTheme: IconThemeData(),
        actions: Responsive.isMobile(context)
            ? null
            : [
                Appbars(),
              ],
      ),
      endDrawer: Responsive.isMobile(context) ? Drawers() : null,
        body: Container(
          width: ScreenSizeConfig.ScreenWidth,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Theme.of(context).primaryColor.withOpacity(0.3),
                Theme.of(context).canvasColor.withOpacity(0.4),
              ],
            ),
          ),
          child: Padding(
            padding: Responsive.isMobile(context)
                ? EdgeInsets.only(
                    top: ScreenSizeConfig.ScreenHeight / 14, left: 20)
                : EdgeInsets.only(
                    left: ScreenSizeConfig.ScreenWidth * 0.07,
                    right: ScreenSizeConfig.ScreenWidth * 0.3,
                    top: ScreenSizeConfig.ScreenHeight * 0.09,
                  ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: ScreenSizeConfig.ScreenHeight / 5,
                ),
                if (_showHello)
                  AnimatedTextKit(
                    animatedTexts: [
                      TyperAnimatedText(
                        "Hello...",
                        textStyle: TextStyle(
                          fontSize: Responsive.isMobile(context)
                              ? ScreenSizeConfig.ScreenWidth * 0.085
                              : ScreenSizeConfig.ScreenWidth * 0.03,
                          fontFamily: ScreenSizeConfig.fontfamilyN,
                          color: Theme.of(context).primaryColorDark,
                          fontWeight: FontWeight.w600,
                        ),
                        speed: const Duration(milliseconds: 100),
                      ),
                    ],
                    isRepeatingAnimation: false,
                  ),
                if (_showName)
                  AnimatedTextKit(
                    animatedTexts: [
                      TyperAnimatedText(
                        "I am Ritika Malve",
                        textStyle: TextStyle(
                          fontSize: Responsive.isMobile(context)
                              ? ScreenSizeConfig.ScreenWidth * 0.07
                              : ScreenSizeConfig.ScreenWidth * 0.04,
                          fontFamily: ScreenSizeConfig.fontfamilyD,
                          letterSpacing: 3,
                          color: Theme.of(context).primaryColorDark,
                          fontWeight: FontWeight.w600,
                        ),
                        speed: const Duration(milliseconds: 100),
                      ),
                    ],
                    isRepeatingAnimation: false,
                  ),
                if (_showDescription)
                  Column(
                    children: [
                      AnimatedTextKit(
                        animatedTexts: [
                          TyperAnimatedText(
                            "Android & iOS Mobile App Developer & \nWeb Developer",
                            textStyle: TextStyle(
                              fontSize: Responsive.isMobile(context)
                                  ? ScreenSizeConfig.ScreenWidth * 0.04
                                  : ScreenSizeConfig.ScreenWidth * 0.02,
                              fontFamily: ScreenSizeConfig.fontfamilyN,
                              color: Theme.of(context).primaryColorDark,
                              fontWeight: FontWeight.w600,
                            ),
                            textAlign: TextAlign.center,
                            speed: const Duration(milliseconds: 90),
                          ),
                        ],
                        isRepeatingAnimation: false,
                      ),
                      SizedBox(height: 30,),
                       if (_showButton)
                      Container(
                        height: Responsive.isMobile(context)
                            ? ScreenSizeConfig.ScreenHeight * 0.035
                            : ScreenSizeConfig.ScreenHeight * 0.039,
                        width: Responsive.isMobile(context)
                            ? ScreenSizeConfig.ScreenWidth * 0.17
                            : ScreenSizeConfig.ScreenWidth * 0.09,
                        decoration: BoxDecoration(
                          color: Theme.of(context)
                              .primaryColorLight
                              .withOpacity(0.1),
                          border: Border.all(
                            width: 1,
                            color: Theme.of(context).primaryColorDark,
                          ),
                          borderRadius: BorderRadius.circular(
                            Responsive.isMobile(context)
                                ? ScreenSizeConfig.ScreenWidth * 0.02
                                : ScreenSizeConfig.ScreenWidth * 0.009,
                          ),
                        ),
                        child: TextButton(
                          onPressed: () {
                            
                          },
                          child: Text(
                            "Resume",
                            style: TextStyle(
                              fontSize: Responsive.isMobile(context)
                                  ? ScreenSizeConfig.ScreenWidth * 0.026
                                  : ScreenSizeConfig.ScreenWidth * 0.012,
                              fontFamily: ScreenSizeConfig.fontfamilyN,
                              color: Theme.of(context).primaryColorDark,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                SizedBox(
                  height: ScreenSizeConfig.ScreenHeight * 0.02,
                ),
                // if (_showButton)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
