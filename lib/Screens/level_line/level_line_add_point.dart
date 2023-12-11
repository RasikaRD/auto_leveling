import 'package:auto_leveling/constant/colors.dart';
import 'package:auto_leveling/constant/texts.dart';
import 'package:flutter/material.dart';

class LevelLineAddPointScreen extends StatefulWidget {
  const LevelLineAddPointScreen({super.key});

  @override
  State<LevelLineAddPointScreen> createState() =>
      _LevelLineAddPointScreenState();
}

class _LevelLineAddPointScreenState extends State<LevelLineAddPointScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text(
          'Horana - Ingiriya Rd (5km) Level Traverse',
          style: headerStyle.copyWith(fontSize: 13),
          textAlign: TextAlign.center,
        ),
        backgroundColor: bgWhite,
        foregroundColor: bgBlack,
        centerTitle: true,
        elevation: 1,
      ),
    );
  }
}
