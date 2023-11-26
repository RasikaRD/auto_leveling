import 'package:auto_leveling/Screens/wrapper.dart';
import 'package:auto_leveling/models/user_model.dart';
import 'package:auto_leveling/services/auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'firebase_options.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamProvider<UserModel?>.value(
      initialData: UserModel(uid: ""),
      value: AuthService().user,
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Wrapper()),
    );
  }
}
