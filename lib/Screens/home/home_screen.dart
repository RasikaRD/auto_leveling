import 'package:auto_leveling/Screens/benchmarks/benchmarks_list.dart';
import 'package:auto_leveling/Screens/documents/documents.dart';
import 'package:auto_leveling/Screens/home/side_bar/main_drawer.dart';
import 'package:auto_leveling/Screens/level_line/level_line.dart';
import 'package:auto_leveling/Screens/level_setting_out/level_setting_out.dart';
import 'package:auto_leveling/constant/colors.dart';
import 'package:auto_leveling/constant/styles.dart';
import 'package:auto_leveling/constant/texts.dart';
import 'package:auto_leveling/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool ongoingProject = false;
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    final AuthService _auth = AuthService();

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Auto Leveling'.toUpperCase(),
          textAlign: TextAlign.center,
        ),
        backgroundColor: bgWhite,
        foregroundColor: bgBlack,
        centerTitle: true,
        elevation: 1,
      ),
      drawer: const MainDrawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 60.0),
              // if (!ongoingProject)
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Ongoing Projects'.toUpperCase(),
                    style: homeText,
                  ),
                  const Divider(
                    height: 30,
                    color: bgBlack,
                    thickness: 1,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            margin: const EdgeInsets.only(right: 10),
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
                      ],
                    ),
                  ),
                ],
              ),
              // else
              const SizedBox(height: 60.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Add New Project'.toUpperCase(),
                    style: homeText,
                  ),
                  const Divider(
                    height: 30,
                    color: bgBlack,
                    thickness: 1,
                  ),
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
                                  Iconsax.maximize_1,
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
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const LevelLineScreen(),
                            ));
                          },
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
                                  Iconsax.routing_2,
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

                        // version 1.1**********

                        // GestureDetector(
                        //   onTap: () {},
                        //   child: Container(
                        //     width: 130,
                        //     height: 130,
                        //     decoration: tileDecoration,
                        //     padding: const EdgeInsets.symmetric(
                        //         horizontal: 8, vertical: 12),
                        //     child: const Column(
                        //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        //       crossAxisAlignment: CrossAxisAlignment.start,
                        //       children: [
                        //         Icon(
                        //           Iconsax.chart,
                        //           color: Colors.black,
                        //           size: 30,
                        //         ),
                        //         SizedBox(height: 8.0),
                        //         Text(
                        //           'ICS',
                        //           style: tileTextStyle,
                        //         )
                        //       ],
                        //     ),
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 60,
              ),

              // version 1.1**********

              // Column(
              //   crossAxisAlignment: CrossAxisAlignment.start,
              //   children: [
              //     Text(
              //       'Calculations'.toUpperCase(),
              //       style: homeText,
              //     ),
              //     const SizedBox(height: 15.0),
              //     SingleChildScrollView(
              //       scrollDirection: Axis.horizontal,
              //       child: Row(
              //         children: [
              //           GestureDetector(
              //             onTap: () {},
              //             child: Container(
              //               width: 130,
              //               height: 130,
              //               decoration: tileDecoration,
              //               padding: const EdgeInsets.symmetric(
              //                   horizontal: 8, vertical: 12),
              //               child: const Column(
              //                 mainAxisAlignment: MainAxisAlignment.spaceAround,
              //                 crossAxisAlignment: CrossAxisAlignment.start,
              //                 children: [
              //                   Icon(
              //                     Iconsax.calculator,
              //                     color: Colors.black,
              //                     size: 30,
              //                   ),
              //                   SizedBox(height: 5.0),
              //                   Text(
              //                     'Collimation Error',
              //                     style: tileTextStyle,
              //                   )
              //                 ],
              //               ),
              //             ),
              //           ),
              //           const SizedBox(width: 10.0),
              //           GestureDetector(
              //             onTap: () {},
              //             child: Container(
              //               width: 130,
              //               height: 130,
              //               decoration: tileDecoration,
              //               padding: const EdgeInsets.symmetric(
              //                   horizontal: 8, vertical: 12),
              //               child: const Column(
              //                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //                 crossAxisAlignment: CrossAxisAlignment.start,
              //                 children: [
              //                   Icon(
              //                     Iconsax.convert,
              //                     color: Colors.black,
              //                     size: 30,
              //                   ),
              //                   SizedBox(height: 8.0),
              //                   Text(
              //                     'Converter',
              //                     style: tileTextStyle,
              //                   )
              //                 ],
              //               ),
              //             ),
              //           ),
              //         ],
              //       ),
              //     ),
              //   ],
              // ),
              // const SizedBox(
              //   height: 50,
              // ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Documents'.toUpperCase(),
                    style: homeText,
                  ),
                  const Divider(
                    height: 30,
                    color: bgBlack,
                    thickness: 1,
                  ),
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
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(
                                  Iconsax.printer,
                                  color: Colors.black,
                                  size: 30,
                                ),
                                // SizedBox(height: 5.0),
                                Text(
                                  'Completed Projects',
                                  style: tileTextStyle,
                                )
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(width: 10.0),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => BenchMarksScreen(),
                            ));
                          },
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
                                  Iconsax.level,
                                  color: Colors.black,
                                  size: 30,
                                ),
                                SizedBox(height: 8.0),
                                Text(
                                  'Benchmark List',
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
        ),
      ),
      
    );
  }
}
