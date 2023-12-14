import 'package:auto_leveling/Screens/documents/documents.dart';
import 'package:auto_leveling/Screens/home/home_screen.dart';
import 'package:auto_leveling/Screens/level_line/level_line.dart';
import 'package:auto_leveling/constant/colors.dart';
import 'package:auto_leveling/constant/styles.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class Home extends StatefulWidget {
  const Home({super.key});
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    LevelLineScreen(),
    DocumentsScreen()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      print(_selectedIndex);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 25,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Iconsax.home_2),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Iconsax.add_square),
            label: 'Level Line',
          ),
          BottomNavigationBarItem(
            icon: Icon(Iconsax.document),
            label: 'Documents',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: const Color.fromARGB(255, 0, 0, 0),
        onTap: _onItemTapped,
        backgroundColor: bgWhite,
        selectedFontSize: 14,
        elevation: 1,
      ),
    );
  }
}
