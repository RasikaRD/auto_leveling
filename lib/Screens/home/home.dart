import 'package:auto_leveling/Screens/documents/documents.dart';
import 'package:auto_leveling/Screens/home/side_bar/main_drawer.dart';
import 'package:auto_leveling/Screens/level_setting_out/level_setting_out.dart';
import 'package:auto_leveling/constant/colors.dart';
import 'package:auto_leveling/constant/styles.dart';
import 'package:auto_leveling/constant/texts.dart';
import 'package:auto_leveling/services/auth.dart';
import 'package:auto_leveling/widgets/navbar.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final AuthService _auth = AuthService();
    const index = 0;
    return Scaffold(
      appBar: AppBar(
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
        padding: const EdgeInsets.symmetric(horizontal: 22),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 70.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Ongoing Projects',
                    style: homeText,
                  ),
                  const SizedBox(height: 15.0),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            width: 110,
                            height: 130,
                            decoration: tileDecoration,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8, vertical: 12),
                            child: const Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(
                                  Iconsax.edit,
                                  color: Colors.black,
                                  size: 25,
                                ),
                                SizedBox(height: 5.0),
                                Text(
                                  'Kandy- Road ICS...',
                                  style: tileTextStyle,
                                )
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(width: 10.0),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            width: 110,
                            height: 130,
                            decoration: tileDecoration,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8, vertical: 12),
                            child: const Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(
                                  Iconsax.edit,
                                  color: Colors.black,
                                  size: 25,
                                ),
                                SizedBox(height: 8.0),
                                Text(
                                  'Water Project - Mahara',
                                  style: tileTextStyle,
                                )
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(width: 10.0),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            width: 110,
                            height: 130,
                            decoration: tileDecoration,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8, vertical: 12),
                            child: const Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(
                                  Iconsax.edit,
                                  color: Colors.black,
                                  size: 25,
                                ),
                                SizedBox(height: 8.0),
                                Text(
                                  'WGA-255 ICS/LHS ...',
                                  style: tileTextStyle,
                                )
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(width: 10.0),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            width: 110,
                            height: 130,
                            decoration: tileDecoration,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8, vertical: 12),
                            child: const Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(
                                  Iconsax.edit,
                                  color: Colors.black,
                                  size: 25,
                                ),
                                SizedBox(height: 8.0),
                                Text(
                                  'CP-03 section/5B ...',
                                  style: tileTextStyle,
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 50.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'New Project',
                    style: homeText,
                  ),
                  const SizedBox(height: 15.0),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => const SettingOutScreen(),
                                ));
                          },
                          child: Container(
                            width: 130,
                            height: 130,
                            decoration: tileDecoration,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8, vertical: 12),
                            child: const Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(
                                  Iconsax.add_square,
                                  color: Colors.black,
                                  size: 30,
                                ),
                                SizedBox(height: 5.0),
                                Text(
                                  'Level Setting Out',
                                  style: tileTextStyle,
                                )
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(width: 10.0),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            width: 130,
                            height: 130,
                            decoration: tileDecoration,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8, vertical: 12),
                            child: const Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(
                                  Iconsax.activity,
                                  color: Colors.black,
                                  size: 30,
                                ),
                                SizedBox(height: 8.0),
                                Text(
                                  'Level Line',
                                  style: tileTextStyle,
                                )
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(width: 10.0),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            width: 130,
                            height: 130,
                            decoration: tileDecoration,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8, vertical: 12),
                            child: const Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(
                                  Iconsax.chart,
                                  color: Colors.black,
                                  size: 30,
                                ),
                                SizedBox(height: 8.0),
                                Text(
                                  'ICS',
                                  style: tileTextStyle,
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Calculations',
                        style: homeText,
                      ),
                      const SizedBox(height: 15.0),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                width: 130,
                                height: 130,
                                decoration: tileDecoration,
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 8, vertical: 12),
                                child: const Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Icon(
                                      Iconsax.calculator,
                                      color: Colors.black,
                                      size: 30,
                                    ),
                                    SizedBox(height: 5.0),
                                    Text(
                                      'Collimation Error',
                                      style: tileTextStyle,
                                    )
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(width: 10.0),
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                width: 130,
                                height: 130,
                                decoration: tileDecoration,
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 8, vertical: 12),
                                child: const Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Icon(
                                      Iconsax.convert,
                                      color: Colors.black,
                                      size: 30,
                                    ),
                                    SizedBox(height: 8.0),
                                    Text(
                                      'Converter',
                                      style: tileTextStyle,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Documents',
                        style: homeText,
                      ),
                      const SizedBox(height: 15.0),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => const DocumentsScreen(),
                                ));
                              },
                              child: Container(
                                width: 130,
                                height: 130,
                                decoration: tileDecoration,
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 8, vertical: 12),
                                child: const Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Icon(
                                      Iconsax.printer,
                                      color: Colors.black,
                                      size: 30,
                                    ),
                                    SizedBox(height: 5.0),
                                    Text(
                                      'Projects',
                                      style: tileTextStyle,
                                    )
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(width: 10.0),
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                width: 130,
                                height: 130,
                                decoration: tileDecoration,
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 8, vertical: 12),
                                child: const Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Icon(
                                      Iconsax.location,
                                      color: Colors.black,
                                      size: 30,
                                    ),
                                    SizedBox(height: 8.0),
                                    Text(
                                      'Bench marks',
                                      style: tileTextStyle,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
