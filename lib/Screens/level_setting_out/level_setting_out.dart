import 'package:auto_leveling/constant/colors.dart';
import 'package:auto_leveling/constant/styles.dart';
import 'package:auto_leveling/constant/texts.dart';
import 'package:auto_leveling/widgets/navbar.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

class SettingOutScreen extends StatefulWidget {
  const SettingOutScreen({super.key});

  @override
  State<SettingOutScreen> createState() => _SettingOutScreenState();
}

class _SettingOutScreenState extends State<SettingOutScreen> {
  var logger = Logger();
  final _formkey = GlobalKey<FormState>();

  double bsReading = 0;
  double designLevel = 0;
  double bsRl = 0;
  double staffReading = 0;
  String error = '';

  void calculateStaffReading() {
    setState(() {
      if (designLevel > (bsReading + bsRl - 5) &&
          designLevel < (bsReading + bsRl + 5)) {
        staffReading = bsReading + bsRl - designLevel;
        logger.f(staffReading);
        error = '';
      } else {
        staffReading = 0;
        error =
            "Design level is out of the range (${(bsReading + bsRl - 5).toStringAsFixed(4)} - ${(bsReading + bsRl + 5.0000).toStringAsFixed(4)})";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Level Setting Out',
          style: headerStyle,
          textAlign: TextAlign.center,
        ),
        backgroundColor: bgWhite,
        foregroundColor: bgBlack,
        centerTitle: true,
        elevation: 1,
      ),
      body: Padding(
        padding: const EdgeInsets.all(22.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              Form(
                key: _formkey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: inputFormDecoration.copyWith(
                          labelText: 'BS Staff reading', hintText: 'ex: 2.635'),
                      validator: (val) {
                        if (val == null || val.isEmpty) {
                          return "Enter Back side Staff reading";
                        }
                        if (RegExp(r"\.\d{5,}").hasMatch(val)) {
                          return "Enter a valid Staff reading (maximum four decimal places)";
                        }
                        if (double.tryParse(val)! > 5.00) {
                          return "Staff reading should be less than 5.000";
                        }
                        return null;
                      },
                      onChanged: (val) {
                        setState(() {
                          bsReading = double.parse(val);
                        });
                      },
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: inputFormDecoration.copyWith(
                          labelText: 'BS Reduced Level (m)',
                          hintText: 'ex: 126.2362'),
                      validator: (val) {
                        if (val == null || val.isEmpty) {
                          return "Enter Reduced Level";
                        }
                        if (RegExp(r"\.\d{5,}").hasMatch(val)) {
                          return "Enter a valid Staff reading (maximum four decimal places)";
                        }
                        return null;
                      },
                      onChanged: (val) {
                        setState(() {
                          bsRl = double.parse(val);
                        });
                      },
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: inputFormDecoration.copyWith(
                          labelText: 'Design Level (m)',
                          hintText: 'ex: 123.4520'),
                      validator: (val) {
                        if (val == null || val.isEmpty) {
                          return "Enter Design Level";
                        }
                        if (RegExp(r"\.\d{5,}").hasMatch(val)) {
                          return "Enter a valid Staff reading (maximum four decimal places)";
                        }
                        return null;
                      },
                      onChanged: (val) {
                        setState(() {
                          designLevel = double.parse(val);
                        });
                      },
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      error,
                      style: warningText,
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    ElevatedButton(
                      style: raisedButtonStyle,
                      onPressed: () {
                        if (_formkey.currentState!.validate()) {
                          calculateStaffReading();
                        }
                      },
                      child: const Text('STAF READING'),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text('Staff Reading :', style: pageHeaderStyle),
                  Container(
                    decoration: tileDecoration,
                    height: 60,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 50, vertical: 15),
                    child: Text(
                      staffReading.toStringAsFixed(4),
                      style: headerStyle.copyWith(fontWeight: FontWeight.w800),
                      textAlign: TextAlign.center,
                    ),
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
