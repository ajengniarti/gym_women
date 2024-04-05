import 'package:flutter/material.dart';

import '../../resources/color_manager.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(image: AssetImage("assets/images/back.png"),
        fit: BoxFit.cover),
      ),

      child: const Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(children: [],),
      ),
    );
  }
}