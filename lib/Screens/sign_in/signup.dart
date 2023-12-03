import 'dart:math';
import 'package:logger/logger.dart';
import 'package:auto_leveling/constant/styles.dart';
import 'package:auto_leveling/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SignupScreen extends StatefulWidget {
  final Function toggle;
  const SignupScreen({super.key, required this.toggle});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final AuthService _auth = AuthService();
  final _formkey = GlobalKey<FormState>();
  var _isObscured;
  String name = "";
  String email = "";
  String password = "";
  String re_password = "";
  String error = "";
  var logger = Logger();

  @override
  void initState() {
    super.initState();
    _isObscured = true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(22.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 50),
              const Text('SIGN UP', style: headerStyle),
              const SizedBox(height: 50),
              Form(
                key: _formkey,
                child: Column(
                  children: [
                    TextFormField(
                      decoration:
                          inputFormDecoration.copyWith(labelText: 'Name'),
                      keyboardType: TextInputType.emailAddress,
                      validator: (val) => val?.isEmpty == true
                          ? "Name should not be empty"
                          : null,
                      onChanged: (val) {
                        setState(() {
                          name = val;
                        });
                      },
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    TextFormField(
                      decoration: inputFormDecoration,
                      keyboardType: TextInputType.emailAddress,
                      autocorrect: false,
                      textCapitalization: TextCapitalization.none,
                      validator: (val) {
                        if (val == null ||
                            val.trim().isEmpty ||
                            !val.contains('@')) {
                          return 'Please enter a valid email address';
                        }
                        return null;
                      },
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
                        labelText: 'Password',
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
                      validator: (val) {
                        if (val == null || val.trim().length < 6) {
                          return "Password must be at least 6 characters";
                        }
                        return null;
                      },
                      // onSaved: (val) => password = val!,
                      onChanged: (val) {
                        setState(() {
                          password = val;
                        });
                      },
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    TextFormField(
                      obscureText: _isObscured,
                      decoration: inputFormDecoration.copyWith(
                        labelText: 'Re-Password',
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
                      validator: (val) {
                        if (val != password) {
                          return "Passwords do not match";
                        }
                        return null;
                      },
                      onSaved: (val) => re_password = val!,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 25,
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
              const SizedBox(
                height: 35,
              ),
              ElevatedButton(
                style: raisedButtonStyle,
                onPressed: () async {
                  if (_formkey.currentState!.validate()) {
                    dynamic result = await _auth.registerWithEmailPasword(
                        email, password, name);
                    logger.f(result);
                    if (result == null) {
                      setState(() {
                        error = "Please enter valid details";
                      });
                    }
                  }
                },
                child: const Text('SIGN UP'),
              ),
              const SizedBox(
                height: 45,
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Already have an account ?',
                        style: TextStyle(fontSize: 16),
                      ),
                      TextButton(
                          onPressed: () {
                            widget.toggle();
                          },
                          child: const Text('SIGN IN'))
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
