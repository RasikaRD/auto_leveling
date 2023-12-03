import 'package:auto_leveling/Screens/sign_in/login.dart';
import 'package:auto_leveling/constant/colors.dart';
import 'package:auto_leveling/constant/styles.dart';
import 'package:auto_leveling/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

class FrogetPasswordScreen extends StatefulWidget {
  const FrogetPasswordScreen({super.key});

  @override
  State<FrogetPasswordScreen> createState() => _FrogetPasswordScreenState();
}

class _FrogetPasswordScreenState extends State<FrogetPasswordScreen> {
  final _formkey = GlobalKey<FormState>();
  final AuthService _auth = AuthService();
  String email = "";
  String error = "";
  var logger = Logger();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 85,
        title: const Text(
          'RESET PASSWORD',
          style: headerStyle,
          textAlign: TextAlign.center,
        ),
        backgroundColor: bgWhite,
        foregroundColor: bgBlack,
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(22.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 80,
              ),
              const Text(
                'Receive an email to reset your password.',
                style: primaryFontStyle,
              ),
              const SizedBox(
                height: 50,
              ),
              Form(
                key: _formkey,
                child: Column(
                  children: [
                    TextFormField(
                      decoration: inputFormDecoration,
                      validator: (val) =>
                          val?.isEmpty == true ? "Enter valid email" : null,
                      onChanged: (val) {
                        setState(() {
                          email = val;
                        });
                      },
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 70,
              ),
              ElevatedButton.icon(
                icon: const Icon(Icons.email_outlined),
                style: raisedButtonStyle,
                onPressed: () async {
                  if (_formkey.currentState!.validate()) {
                    dynamic result = await _auth.resetPassword(email);
                    if (result == null) {
                      setState(() {
                        error = "Please enter valid email";
                      });
                    }
                    logger.f('message');
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Password reset email sent'),
                        backgroundColor: Colors.green,
                        duration: Duration(seconds: 5),
                      ),
                    );
                    Navigator.pop(context);
                  }
                },
                label: const Text('RESET PASSWORD'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
