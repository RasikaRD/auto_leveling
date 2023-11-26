import 'package:auto_leveling/models/user_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

class AuthService {
  var logger = Logger();
  final FirebaseAuth _auth = FirebaseAuth.instance;

  UserModel? _userWithFirbaseUserUid(User? user) {
    return user != null ? UserModel(uid: user.uid) : null;
  }

  Stream<UserModel?> get user {
    return _auth.authStateChanges().map(_userWithFirbaseUserUid);
  }

// Sign in Anonymously
  Future signInAnonymously() async {
    try {
      UserCredential result = await _auth.signInAnonymously();
      User? user = result.user;
      logger.f(user);

      return _userWithFirbaseUserUid(user);
    } catch (e) {
      logger.f(e);

      return null;
    }
  }

// register using email & password
  Future registerWithEmailPasword(
      String email, String password, String name) async {
    try {
      UserCredential result = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      User? user = result.user;
      user?.updateProfile(displayName: name);
      return _userWithFirbaseUserUid(user);
    } catch (e) {
      logger.f(e);

      return null;
    }
  }

  // sign up using email & password
  Future signUpWithEmailPasword(String email, String password) async {
    try {
      UserCredential result = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      User? user = result.user;
      return _userWithFirbaseUserUid(user);
    } catch (e) {
      logger.f(e);

      return null;
    }
  }

  // signout
  Future signOut() async {
    try {
      return await _auth.signOut();
    } catch (e) {
      logger.f(e);

      return null;
    }
  }

  // reset password
  Future resetPassword(String email) async {
    try {
      await _auth.sendPasswordResetEmail(email: email);
    } catch (e) {
      logger.f(e);
    }
  }
}
