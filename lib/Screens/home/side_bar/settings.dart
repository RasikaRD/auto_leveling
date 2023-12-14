import 'package:auto_leveling/constant/colors.dart';
import 'package:auto_leveling/constant/texts.dart';
import 'package:auto_leveling/Screens/home.dart';
import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Settings',
          textAlign: TextAlign.center,
        ),
        backgroundColor: bgWhite,
        foregroundColor: bgBlack,
        centerTitle: true,
        elevation: 1,
      ),
      body: const Padding(
        padding: EdgeInsets.all(40.0),
        child: Column(children: [
          SizedBox(height: 50,),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Text('Dark Mode', style: primaryFontStyle,),
            SizedBox(width: 10,),
            Icon(Icons.toggle_off_outlined, size: 32,color: Color.fromARGB(221, 153, 152, 152),)
          ],)
        ],),
      ),
  
    );
  }
}