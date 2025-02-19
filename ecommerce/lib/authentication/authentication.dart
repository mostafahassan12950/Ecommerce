import 'package:ecommerce/authentication/login_screen/login_screen_view.dart';
import 'package:ecommerce/home_screen/home_screen_view.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Authentication extends StatelessWidget {
  Authentication({Key? key}) : super(key: key);

  final FirebaseAuth auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    if (auth.currentUser != null) {
      return HomeScreenView();
    } else {
      return LoginScreen();
    }
  }
}
