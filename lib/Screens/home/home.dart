import 'package:auto_leveling/Screens/about_app_screen.dart';
import 'package:auto_leveling/Screens/documents/documents.dart';
import 'package:auto_leveling/widgets/main_drawer.dart';
import 'package:auto_leveling/constant/colors.dart';
import 'package:auto_leveling/constant/styles.dart';
import 'package:auto_leveling/services/auth.dart';
import 'package:auto_leveling/widgets/navbar.dart';
import 'package:auto_leveling/widgets/navbar2.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final AuthService _auth = AuthService();
    const index = 0;
    return Scaffold(
      appBar: AppBar(
        // leading: ElevatedButton(
        //   onPressed: () {
        //     Navigator.of(context).push(MaterialPageRoute(
        //       builder: (context) => const MenuScreen(),
        //     ));
        //   },
        //   style: ElevatedButton.styleFrom(
        //       foregroundColor: Colors.black,
        //       backgroundColor: Colors.white,
        //       elevation: 0),
        //   child: const Icon(Icons.menu_rounded),
        // ),
        title: const Text(
          'Auto Leveling',
          style: headerStyle,
          textAlign: TextAlign.center,
        ),
        backgroundColor: bgWhite,
        foregroundColor: bgBlack,
        centerTitle: true,
        elevation: 1,
      ),
      drawer: const MainDrawer(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: 175,
                    height: 130,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(51, 173, 173, 173),
                      border: Border.all(
                          color: const Color.fromARGB(255, 83, 83, 83)),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 20),
                    margin: const EdgeInsets.all(8),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Icons.error_outline,
                          color: Colors.black,
                          size: 40,
                        ),
                        SizedBox(height: 8.0),
                        Text(
                          'Collimation error',
                          style: primaryFontStyle,
                        )
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: 175,
                    height: 130,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(51, 173, 173, 173),
                      border: Border.all(
                          color: const Color.fromARGB(255, 83, 83, 83)),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 20),
                    margin: const EdgeInsets.all(8),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Icons.add_box_outlined,
                          color: Colors.black,
                          size: 40,
                        ),
                        SizedBox(height: 8.0),
                        Text(
                          'Level Line',
                          style: primaryFontStyle,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: 175,
                    height: 130,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(51, 173, 173, 173),
                      border: Border.all(
                          color: const Color.fromARGB(255, 83, 83, 83)),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 20),
                    margin: const EdgeInsets.all(8),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Icons.add_box_outlined,
                          color: Colors.black,
                          size: 40,
                        ),
                        SizedBox(height: 8.0),
                        Text(
                          'Level Setting Out',
                          style: primaryFontStyle,
                        )
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const DocumentsScreen(),
                    ));
                  },
                  child: Container(
                    width: 175,
                    height: 130,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(51, 173, 173, 173),
                      border: Border.all(
                          color: const Color.fromARGB(255, 83, 83, 83)),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 20),
                    margin: const EdgeInsets.all(8),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Icons.content_paste,
                          color: Colors.black,
                          size: 40,
                        ),
                        SizedBox(height: 8.0),
                        Text(
                          'Documents',
                          style: primaryFontStyle,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: 175,
                    height: 130,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(51, 173, 173, 173),
                      border: Border.all(
                          color: const Color.fromARGB(255, 83, 83, 83)),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 20),
                    margin: const EdgeInsets.all(8),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Icons.settings_outlined,
                          color: Colors.black,
                          size: 40,
                        ),
                        SizedBox(height: 8.0),
                        Text(
                          'Settings',
                          style: primaryFontStyle,
                        )
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const AboutApp()),
                    );
                  },
                  child: Container(
                    width: 175,
                    height: 130,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(51, 173, 173, 173),
                      border: Border.all(
                          color: const Color.fromARGB(255, 83, 83, 83)),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 20),
                    margin: const EdgeInsets.all(8),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Icons.phone_android,
                          color: Colors.black,
                          size: 40,
                        ),
                        SizedBox(height: 8.0),
                        Text(
                          'About App',
                          style: primaryFontStyle,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
