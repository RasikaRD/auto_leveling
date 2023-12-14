import 'package:auto_leveling/constant/colors.dart';
import 'package:auto_leveling/constant/styles.dart';
import 'package:auto_leveling/constant/texts.dart';
import 'package:auto_leveling/services/auth.dart';
import 'package:flutter/material.dart';

class ProfileEdit extends StatefulWidget {
  const ProfileEdit({super.key});

  @override
  State<ProfileEdit> createState() => _ProfileEditState();
}

class _ProfileEditState extends State<ProfileEdit> {
  final AuthService _auth = AuthService();
  final _formkey = GlobalKey<FormState>();

  String name = "";
  String company_name = "";
  String mobile_number = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Profile Details',
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
                  children: [
                    TextFormField(
                      decoration:
                          inputFormDecoration.copyWith(labelText: 'Name', hintText: 'ex: Ranil Perera'),
                      validator: (val) =>
                          val?.isEmpty == true ? "Enter Name" : null,
                      onChanged: (val) {
                        setState(() {
                          name = val;
                        });
                      },
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    TextFormField(
                      decoration: inputFormDecoration.copyWith(
                          labelText: 'Company Name',hintText: 'ex: ABC PLC'),
                      validator: (val) =>
                          val?.isEmpty == true ? "Enter Company Name" : null,
                      onChanged: (val) {
                        setState(() {
                          company_name = val;
                        });
                      },
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: inputFormDecoration.copyWith(
                          labelText: 'Mobile Number', hintText: 'ex: 0778158307'),
                      validator: (val) => val?.isEmpty == true
                          ? "Mobile Number should be 10 digits"
                          : null,
                      onChanged: (val) {
                        setState(() {
                          mobile_number = val;
                        });
                      },
                    ),
                    const SizedBox(
                      height: 70,
                    ),
                    ElevatedButton(
                      style: primaryButtonStyle,
                      onPressed: () async {},
                      child: const Text('SAVE'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
