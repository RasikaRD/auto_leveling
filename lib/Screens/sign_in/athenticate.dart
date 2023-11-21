import 'package:auto_leveling/Screens/sign_in/login.dart';
import 'package:auto_leveling/Screens/sign_in/signup.dart';
import 'package:flutter/widgets.dart';

class Authenticate extends StatefulWidget {
  const Authenticate({super.key});

  @override
  State<Authenticate> createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {
  bool singinPage = true;

  void switchPages() {
    setState(() {
      singinPage = !singinPage;
    });
  }

  @override
  Widget build(BuildContext context) {
   if (singinPage == true) {
      return LogInScreen(toggle: switchPages);
    } else {
      return SignupScreen(toggle: switchPages);
    }
  }
}