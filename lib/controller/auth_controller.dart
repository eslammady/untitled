import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/widgets.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter/material.dart';
import 'package:untitled/Shared/Screens/navigation_screen.dart';

class AuthController {
  Future googleLogIn(BuildContext context) async {
    try {
      final GoogleSignInAccount? guser = await GoogleSignIn().signIn();
      final GoogleSignInAuthentication gauth = await guser!.authentication;
      final credential = GoogleAuthProvider.credential(
          accessToken: gauth.accessToken, idToken: gauth.idToken);
      return await FirebaseAuth.instance
          .signInWithCredential(credential)
          .whenComplete(() {
        if (FirebaseAuth.instance.currentUser != null)
          Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(builder: (context) {
                return Navigation_screen();
              }), (route) => false);
      });
    } catch (a) {
      print(a);
    }
  }

  Future usersignup(TextEditingController email, TextEditingController password,
      BuildContext context) async {
    try {
      FirebaseAuth.instance
          .createUserWithEmailAndPassword(
              email: email.text, password: password.text)
          .whenComplete(() {
        if (FirebaseAuth.instance.currentUser != null)
          Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(builder: (context) {
                return Navigation_screen();
              }), (route) => false);
      });
    } catch (a) {
      print(a);
    }
  }

  Future userlogin(TextEditingController email, TextEditingController password,
      BuildContext context) async {
    try {
      FirebaseAuth.instance
          .signInWithEmailAndPassword(
              email: email.text, password: password.text)
          .whenComplete(() {
        if (FirebaseAuth.instance.currentUser != null)
          Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(builder: (context) {
            return Navigation_screen();
          }), (route) => false);
      });
    } catch (a) {
      FirebaseAuth.instance.signOut();
      print(a);
    }
  }
}
