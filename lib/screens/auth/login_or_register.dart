import 'package:app_gym/screens/auth/LoginScreen.dart';
import 'package:app_gym/screens/auth/RegisterScreen.dart';
import 'package:flutter/material.dart';

class LoginOrRegister extends StatefulWidget {
  const LoginOrRegister({super.key});

  @override
  State<LoginOrRegister> createState() => _LoginOrRegisterState();
}

class _LoginOrRegisterState extends State<LoginOrRegister> {

  //initially show login page
  bool showLoginScreen = true;

  //toggle between login and register page
  void togglePages() {
    setState(() {
      showLoginScreen = !showLoginScreen;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLoginScreen) {
      return LoginScreen(
        onTap:togglePages
      );
  } else {
    return RegisterScreen(
      onTap: togglePages,
    );
  }
  }
}