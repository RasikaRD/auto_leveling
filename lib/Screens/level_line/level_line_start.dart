import 'package:auto_leveling/Screens/level_line/level_line_add_point.dart';
import 'package:auto_leveling/constant/colors.dart';
import 'package:auto_leveling/constant/styles.dart';
import 'package:auto_leveling/constant/texts.dart';
import 'package:flutter/material.dart';

class LevelLineScreen extends StatefulWidget {
  const LevelLineScreen({super.key});

  @override
  State<LevelLineScreen> createState() => _LevelLineScreenState();
}

class _LevelLineScreenState extends State<LevelLineScreen> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'New Level Line',
          style: headerStyle,
          textAlign: TextAlign.center,
        ),
        backgroundColor: bgWhite,
        foregroundColor: bgBlack,
        centerTitle: true,
        elevation: 1,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 40,
              ),
              const Text(
                'Project Details',
                style: primaryFontStyle,
              ),
              const SizedBox(
                height: 15,
              ),
              Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: inputFormDecoration.copyWith(
                            labelText: 'Level Line Name',
                            hintText: 'ex: Horana-Ingiriya Rd (5km) ICS'),
                        validator: (val) {
                          if (val == null || val.isEmpty) {
                            return "Enter New Level Line";
                          }
                          return null;
                        },
                        onChanged: (val) {
                          setState(() {});
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        decoration: inputFormDecoration.copyWith(
                            labelText: 'Surveyor',
                            hintText: 'ex: Ranil Perera'),
                        validator: (val) {
                          if (val == null || val.isEmpty) {
                            return "Enter Surveyor name";
                          }
                          return null;
                        },
                        onChanged: (val) {
                          setState(() {});
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        keyboardType: TextInputType.number,
                        decoration: inputFormDecoration.copyWith(
                            labelText: 'Collimation Error',
                            hintText: 'ex : 0.031'),
                        validator: (val) {
                          if (val == null || val.isEmpty) {
                            return "Enter collimation error";
                          }
                          return null;
                        },
                        onChanged: (val) {
                          setState(() {});
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        decoration: inputFormDecoration.copyWith(
                            labelText: 'Instrument',
                            hintText: 'ex : Sokkia - A40B'),
                        validator: (val) {
                          if (val == null || val.isEmpty) {
                            return "Enter Instrument name";
                          }
                          return null;
                        },
                        onChanged: (val) {
                          setState(() {});
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      // const Divider(
                      //   height: 40,
                      //   thickness: 1,
                      //   color: Color.fromARGB(255, 83, 83, 83),
                      // ),
                      TextFormField(
                        decoration: inputFormDecoration.copyWith(
                            labelText: 'Start TBM point',
                            hintText: 'ex: GPS02'),
                        validator: (val) {
                          if (val == null || val.isEmpty) {
                            return "Enter Start point name";
                          }
                          return null;
                        },
                        onChanged: (val) {
                          setState(() {});
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        keyboardType: TextInputType.number,
                        decoration: inputFormDecoration.copyWith(
                            labelText: 'Start Point Reduced level',
                            hintText: 'ex: 102.635'),
                        validator: (val) {
                          if (val == null || val.isEmpty) {
                            return "Enter Reduced Level";
                          }
                          return null;
                        },
                        onChanged: (val) {
                          setState(() {});
                        },
                      ),
                      // const SizedBox(
                      //   height: 25,
                      // ),
                      // const Divider(
                      //   height: 30,
                      //   thickness: 2,
                      //   color: Color.fromARGB(255, 83, 83, 83),
                      // ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          //     const Text(
                          //       'If available',
                          //       style: primaryFontStyle,
                          //     ),
                          //     const SizedBox(
                          //       height: 25,
                          //     ),
                          //     TextFormField(
                          //       decoration: inputFormDecoration.copyWith(
                          //           labelText: 'End point', hintText: 'ex: GPS03'),
                          //       // validator: (val) {
                          //       //   if (val == null || val.isEmpty) {
                          //       //     return "Enter Reduced Level";
                          //       //   }
                          //       //   return null;
                          //       // },
                          //       onChanged: (val) {
                          //         setState(() {});
                          //       },
                          //     ),
                          //     const SizedBox(
                          //       height: 25,
                          //     ),
                          //     TextFormField(
                          //       keyboardType: TextInputType.number,
                          //       decoration: inputFormDecoration.copyWith(
                          //           labelText: 'Reduced level', hintText: 'ex: 112.496'),
                          //       // validator: (val) {
                          //       //   if (val == null || val.isEmpty) {
                          //       //     return "Enter Reduced Level";
                          //       //   }
                          //       //   return null;
                          //       // },
                          //       onChanged: (val) {
                          //         setState(() {});
                          //       },
                          //     ),
                          const SizedBox(
                            height: 40,
                          ),
                          ElevatedButton(
                            style: raisedButtonStyle,
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) =>
                                    const LevelLineAddPointScreen(),
                              ));
                            },
                            child: const Text('NEXT'),
                          ),
                        ],
                      ),
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
