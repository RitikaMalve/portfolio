import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portpolio/component/Drawer/customiconbutton.dart';
import 'package:portpolio/custom/textbuttonforappbar.dart';
import 'package:portpolio/responsive/screenSizeConfig.dart';
import 'package:portpolio/responsive/theamecolor.dart';
import 'package:provider/provider.dart';

class Drawers extends StatelessWidget {
 
   Drawers({Key? key , }) : super(key: key , );
  

  @override
  Widget build(BuildContext context) {
     
    final thmode = Provider.of<DarkMode>(context);

    return Drawer(
      backgroundColor: Theme.of(context).hintColor,
      child: GestureDetector(
        onTap: (){
            Navigator.of(context).pop();
        },
        child: ListView(
          
          padding: EdgeInsets.zero,
          children: [
            Container(
          
              width: ScreenSizeConfig.ScreenWidth,
               height: 150,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                 Theme.of(context).hintColor,
                 Theme.of(context).primaryColorLight
                    //Theme.of(context).canvasColor,
                  ],
                ),
              ),
             
             // color: Theme.of(context).primaryColorLight,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 35, left: 10),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: CircleAvatar(
                        radius: 35,
                        child: ClipOval(
                            child: Image.network(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQkvDcn_y-RzU0088WIFhezpj-24VMhi5wYqZvR38D4dW9iWdDLsRopM6Bv2ckpCXM1-c0&usqp=CAU",
                         
                          fit: BoxFit.cover,
                        )
        
                            // Image.asset("services.profilei_mage")
                            ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, left: 10),
                    child: Text(
                      " ritikadmalve@gmail.com",
                      style: TextStyle(
                          fontFamily: ScreenSizeConfig.fontfamilyN,
                          color: Theme.of(context).hintColor,
                          fontSize: 15,
                          fontWeight: FontWeight.w900),
                    ),
                  ),
                ],
              ),
            ),
        
          
            customiconbutton(
              customtittel: 'Home',
              iconData: FontAwesomeIcons.home, actionOnTap: () {  Navigator.pop(context); },
            ),
            customiconbutton(
              customtittel: 'Project',
              iconData: FontAwesomeIcons.projectDiagram, actionOnTap: () {  Navigator.pop(context);  },
            ),
            customiconbutton(
              customtittel: 'About',
              iconData: FontAwesomeIcons.infoCircle, actionOnTap: () {  Navigator.pop(context);  },
            ),
            customiconbutton(
              customtittel: 'Contact',
              iconData: FontAwesomeIcons.envelope, actionOnTap: () {  Navigator.pop(context);  },
            ),
            customiconbutton(
              customtittel: 'Hire me',
              iconData: FontAwesomeIcons.handshake, actionOnTap: () {  Navigator.pop(context);  },
            ),
            customiconbutton(
              customtittel: 'Mode',
              iconData: thmode.darkMode ? Icons.brightness_3 : Icons.wb_sunny, actionOnTap: () {  thmode.changemode(); },
            ),
          
            
          ],
        ),
      ),
    );
  }
}
