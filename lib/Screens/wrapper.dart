import 'package:auto_leveling/Screens/home/home.dart';
import 'package:auto_leveling/Screens/sign_in/athenticate.dart';
import 'package:auto_leveling/models/user_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({super.key});

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserModel?>(context);
    if (user == null) {
      return const Authenticate();
    } else {
      return const Home();
    }
  }
}
