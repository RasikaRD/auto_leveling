import 'dart:convert';

import 'package:auto_leveling/constant/colors.dart';
import 'package:auto_leveling/constant/styles.dart';
import 'package:auto_leveling/constant/texts.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:logger/logger.dart';
import 'package:shared_preferences/shared_preferences.dart';

class BenchMarksScreen extends StatefulWidget {
  const BenchMarksScreen({super.key});
  @override
  State<BenchMarksScreen> createState() => _BenchMarksScreenState();
}

class _BenchMarksScreenState extends State<BenchMarksScreen> {
  var logger = Logger();
  final _formkey = GlobalKey<FormState>();

  TextEditingController nameController = TextEditingController();
  TextEditingController heightController = TextEditingController();
  List<Map<String, dynamic>> benchmarkList = [];
  @override
  void initState() {
    super.initState();
    _loadData();
  }

  void _loadData() async {
    logger.f('_loadData');

    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String> benchmarkData = prefs.getStringList('benchmarkList') ?? [];
    logger.f(benchmarkList);

    setState(() {
      benchmarkList = benchmarkData
          .map((data) => Map<String, dynamic>.from(json.decode(data)))
          .toList();
      logger.f(benchmarkList);
    });
  }

  void _saveData() async {
    logger.f('_saveData');

    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String> benchmarkData =
        benchmarkList.map((data) => json.encode(data)).toList();

    prefs.setStringList('benchmarkList', benchmarkData);
    logger.f(benchmarkData);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Benchmark List',
          textAlign: TextAlign.center,
        ),
        backgroundColor: bgWhite,
        foregroundColor: bgBlack,
        centerTitle: true,
        elevation: 1,
      ),
      body: Padding(
        padding: const EdgeInsets.all(22),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 55,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: benchmarkList.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.only(bottom: 10),
                    decoration: tileDecoration,
                    height: 50,
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            const Icon(Iconsax.cd5),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              benchmarkList[index]['name'],
                              style: bodyTextStyle,
                            ),
                            const SizedBox(
                              width: 150,
                            ),
                            Text(
                              benchmarkList[index]['height'],
                              style: bodyTextStyle.copyWith(
                                  fontWeight: FontWeight.w700),
                              textAlign: TextAlign.right,
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            ElevatedButton(
                style: primaryButtonStyle,
                onPressed: () {
                  _addBenchMarkModal(context);
                },
                child: const Text('Add New Point')),
            const SizedBox(
              height: 55,
            ),
          ],
        ),
      ),
    );
  }

// Modal- Add bench mark
  void _addBenchMarkModal(context) {
    showModalBottomSheet<dynamic>(
      context: context,
      isScrollControlled: true,
      backgroundColor: const Color.fromARGB(0, 255, 255, 255),
      builder: (BuildContext context) {
        return StatefulBuilder(builder: (context, setState) {
          return Padding(
            padding: MediaQuery.of(context).viewInsets,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.5,
              decoration: tileDecoration.copyWith(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25)),
                  color: bgWhite),
              padding: const EdgeInsets.all(22.0),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 15.0),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'NEW BENCH MARK',
                          style: primaryFontStyle,
                          textAlign: TextAlign.left,
                        ),
                        // const SizedBox(
                        //   width: 30,
                        // ),
                        // IconButton(
                        //     onPressed: () {
                        //       Navigator.of(ctx).pop();
                        //     },
                        //     icon: const Icon(Iconsax.close_square,))
                      ],
                    ),
                    const Divider(
                      height: 20,
                      color: hrGray,
                      thickness: 1,
                    ),
                    const SizedBox(height: 15.0),
                    TextFormField(
                      decoration: inputFormDecoration.copyWith(
                          labelText: 'Name', hintText: 'ex: TBM12/255'),
                      validator: (val) {
                        if (val == null || val.isEmpty) {
                          return "Enter Bench Mark Name";
                        }
                        return null;
                      },
                      controller: nameController,
                      // onChanged: (val) {
                      //   setState(() {
                      //     name = val;
                      //     logger.f('name');
                      //     logger.f(name);
                      //   });
                      // },
                    ),
                    const SizedBox(height: 15.0),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: inputFormDecoration.copyWith(
                          labelText: 'Reduced Level', hintText: 'ex: 109.5621'),
                      validator: (val) {
                        if (val == null || val.isEmpty) {
                          return "Enter Bench Mark Reduced Level";
                        }
                        return null;
                      },
                      controller: heightController,
                      // onChanged: (val) {
                      //   setState(() {
                      //     reducedLevel = double.parse(val);
                      //     logger.f('reducedLevel');
                      //     logger.f(reducedLevel);
                      //   });
                      // },
                    ),
                    const SizedBox(height: 50.0),
                    OutlinedButton(
                      style: outlineButton,
                      onPressed: () {
                        setState(() {
                          benchmarkList.add({
                            'name': nameController.text,
                            'height': heightController.text,
                          });
                          _saveData();

                          nameController.clear();
                          heightController.clear();
                        });
                        Navigator.pop(context);

                        // if (_formkey.currentState!.validate()) {
                        //   logger.f(reducedLevel);

                        //   Navigator.pop(context);
                        // } else {
                        //   logger.f('error');
                        // }
                      },
                      child: const Text('SAVE'),
                    ),
                  ],
                ),
              ),
            ),
          );
        });
      },
    );
  }
}
