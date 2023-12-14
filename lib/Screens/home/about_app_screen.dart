import 'package:auto_leveling/constant/colors.dart';
import 'package:auto_leveling/constant/texts.dart';
import 'package:auto_leveling/Screens/home.dart';
import 'package:flutter/material.dart';

class AboutApp extends StatelessWidget {
  const AboutApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'About',
          textAlign: TextAlign.center,
        ),
        backgroundColor: bgWhite,
        foregroundColor: bgBlack,
        centerTitle: true,
        elevation: 1,
      ),
      body: ListView(
        padding: const EdgeInsets.all(24),
        children: [
          const SizedBox(
            height: 25,
          ),
          const Text(
            'Levelling Calculator',
            style: pageHeaderStyle,
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'In the context of surveying or construction, Auto level typically refers to an automatic leveling instrument or a self-leveling laser level. These tools are used to measure height differences and establish horizontal planes accurately.',
            style: bodyTextStyle,
          ),
          const SizedBox(
            height: 15,
          ),
          const Text(
            "'Level line automation' harnesses advanced algorithms to provide you with reliable and precise level line measurements. Whether you're on a construction site, surveying rugged terrain, or working on any project that demands precise leveling, our app ensures your measurements are spot-on.",
            style: bodyTextStyle,
          ),
          const SizedBox(
            height: 40,
          ),
          Center(
            child: Image.asset(
              'assets/images/Logo_Leveling_App.png',
              width: 110,
            ),
          ),
          const SizedBox(height: 5,),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(Icons.mail_outline, size: 20),
              SizedBox(
                width: 10,
              ),
              Text(
                'leveltest@test.com',
                style: bodyTextStyle,
              )
            ],
          )
        ],
      ),
      
    );
  }
}
