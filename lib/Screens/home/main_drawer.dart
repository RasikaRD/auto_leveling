import 'package:auto_leveling/Screens/home/about_app_screen.dart';
import 'package:auto_leveling/Screens/home/profile.dart';
import 'package:auto_leveling/constant/texts.dart';
import 'package:auto_leveling/services/auth.dart';
import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final AuthService _auth = AuthService();
    return Drawer(
      child: Column(
        children: [
          const DrawerHeader(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Color.fromARGB(51, 173, 173, 173),
            ),
            child: Row(
              children: [
                Icon(Icons.menu),
                SizedBox(
                  width: 15,
                ),
                Text(
                  'Menu',
                  style: pageHeaderStyle,
                )
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Icons.account_box_outlined),
            title: const Text(
              'Profile',
              style: primaryFontStyle,
            ),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const ProfileScreen()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.perm_data_setting_outlined),
            title: const Text(
              'Settings',
              style: primaryFontStyle,
            ),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.list_alt_outlined),
            title: const Text(
              'About App',
              style: primaryFontStyle,
            ),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const AboutApp()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text(
              'Sing out',
              style: primaryFontStyle,
            ),
            onTap: () async {
              await _auth.signOut();
            },
          ),
        ],
      ),
    );
  }
}
