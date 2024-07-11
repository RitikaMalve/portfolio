import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portpolio/responsive/screenSizeConfig.dart';

class customiconbutton extends StatefulWidget {
  String customtittel ; 
  IconData iconData ;
  void Function()? actionOnTap ;
  customiconbutton(  {
    super.key,
    required this.customtittel, 
    required this.iconData, 
    required this.actionOnTap
  });

  @override
  State<customiconbutton> createState() => _customiconbuttonState();
}

class _customiconbuttonState extends State<customiconbutton> {
  @override
  Widget build(BuildContext context) {
    return Column(
      
      children: [
         SizedBox(height: 20,),
        ListTile(
            title: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              
              children: [
                
                FaIcon(
                 widget.iconData,
                  size: 20,
                  color: Theme.of(context).primaryColorLight.withOpacity(0.8),
                ),
                //    SizedBox(width: 5,),
                Padding(
                  padding: EdgeInsets.only( left: 8),
                  child: Text(
                    widget.customtittel,
                    style: TextStyle(
                        fontSize: ScreenSizeConfig.ScreenWidth * 0.048,
                        color: Theme.of(context).primaryColorLight,
                        fontFamily: ScreenSizeConfig.fontfamilyD,
                        letterSpacing: 3,
                        // wordSpacing: ,
                        fontWeight: FontWeight.w900),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            onTap: widget.actionOnTap
            //  () {
            //   Navigator.pop(context);
            // }
            ),
            SizedBox(height: 20,),
            Divider(
                  color:  Theme.of(context).primaryColorLight.withOpacity(0.5),
                  height: 0,
                  thickness: 0,
                ),
      ],
    );
  }
}
