import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthenticationService {
  final FirebaseAuth authservice;
  AuthenticationService(this.authservice);

  Future<bool> signUp({required String email, required String password}) async {
    try {
      await authservice.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return true;
    } on FirebaseAuthException catch (e) {
      debugPrint('Error, ${e.message}');
      return false;
    }
  }

  Future<bool> signIn({required String email, required String password}) async {
    try {
      await authservice.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return true;
    } on FirebaseAuthException catch (e) {
      debugPrint('Error, ${e.message}');
      return false;
    }
  }
}
