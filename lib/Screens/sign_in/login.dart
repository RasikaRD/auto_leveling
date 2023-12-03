import 'package:auto_leveling/Screens/sign_in/froget_password.dart';
import 'package:auto_leveling/constant/colors.dart';
import 'package:auto_leveling/constant/styles.dart';
import 'package:auto_leveling/services/auth.dart';
import 'package:flutter/material.dart';

class LogInScreen extends StatefulWidget {
  final Function toggle;
  const LogInScreen({super.key, required this.toggle});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  final AuthService _auth = AuthService();
  final _formkey = GlobalKey<FormState>();
  var _isObscured;

  String email = "";
  String password = "";
  String error = "";

  @override
  void initState() {
    super.initState();
    _isObscured = true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(backgroundColor: Colors.white),
      body: Padding(
        padding: const EdgeInsets.all(22.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 50),
              Center(
                child: Image.asset(
                  'assets/images/Logo_Leveling_App.png',
                  width: 140,
                ),
              ),
              const SizedBox(height: 15),
              OutlinedButton(
                  style: outlineButton,
                  onPressed: () async {
                    await _auth.signInAnonymously();
                  },
                  child: const Text(
                    'CONTINUE AS GUEST',
                    style: TextStyle(color: primaryBlue),
                  )),
              const SizedBox(height: 25),
              const Text('Or', style: TextStyle(fontSize: 18)),
              const SizedBox(height: 25),
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
                    const SizedBox(
                      height: 25,
                    ),
                    TextFormField(
                      obscureText: _isObscured,
                      decoration: inputFormDecoration.copyWith(
                        labelText: 'Enter your password',
                        suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                _isObscured = !_isObscured;
                              });
                            },
                            icon: _isObscured
                                ? const Icon(Icons.visibility)
                                : const Icon(Icons.visibility_off)),
                      ),
                      validator: (val) =>
                          val?.isEmpty == true ? "Enter valid password" : null,
                      onChanged: (val) {
                        setState(() {
                          password = val;
                        });
                      },
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 2),
                    child: Text(
                      error,
                      style: const TextStyle(
                          fontSize: 14, color: Colors.redAccent),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 10, top: 0),
                        child: Text(
                          'Forgot Password ?',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const FrogetPasswordScreen()),
                            );
                          },
                          child: const Text('CLICK HERE'))
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              ElevatedButton(
                style: raisedButtonStyle,
                onPressed: () async {
                  dynamic result =
                      await _auth.signUpWithEmailPasword(email, password);
                  if (result == null) {
                    setState(() {
                      error = " Wrong user credintials";
                    });
                  }
                },
                child: const Text('SIGN IN'),
              ),
              const SizedBox(
                height: 25,
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Don’t have a profile?',
                        style: TextStyle(fontSize: 16),
                      ),
                      TextButton(
                          onPressed: () {
                            widget.toggle();
                          },
                          child: const Text('SIGN UP'))
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
