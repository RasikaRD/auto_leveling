import 'package:auto_leveling/constant/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SignupScreen extends StatefulWidget {
  final Function toggle;
  const SignupScreen({super.key, required this.toggle});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final _formkey = GlobalKey<FormState>();
  var _isObscured;
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
                      validator: (val) =>
                          val?.isEmpty == true ? "Enter valid email" : null,
                      onChanged: (val) {
                        setState(() {});
                      },
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    TextFormField(
                      decoration: inputFormDecoration,
                      keyboardType: TextInputType.emailAddress,
                      validator: (val) =>
                          val?.isEmpty == true ? "Enter valid email" : null,
                      onChanged: (val) {
                        setState(() {});
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
                      validator: (val) =>
                          val?.isEmpty == true ? "Enter valid password" : null,
                      onChanged: (val) {
                        setState(() {});
                      },
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    TextFormField(
                      obscureText: _isObscured,
                      decoration: inputFormDecoration.copyWith(
                        labelText: 'Re-password',
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
                      validator: (val) => val?.isEmpty == true
                          ? "Re-enter same password"
                          : null,
                      onChanged: (val) {
                        setState(() {});
                      },
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 35,
              ),
              ElevatedButton(
                style: raisedButtonStyle,
                onPressed: () {},
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
                      TextButton(onPressed: () {
                        widget.toggle();
                      }, child: const Text('SIGN IN'))
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
