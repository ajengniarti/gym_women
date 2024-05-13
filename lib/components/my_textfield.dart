import 'package:flutter/material.dart';
import 'package:app_gym/resources/color_manager.dart';

class MyTextField extends StatefulWidget {
  final dynamic controller;
  final String hintText;
  final bool obscureText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;

  const MyTextField({
    required this.controller,
    required this.hintText,
    required this.obscureText,
    required this.prefixIcon,
    this.suffixIcon,
  });

  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  @override
  Widget build(BuildContext context) {
    return
    Container(
  padding: const EdgeInsets.all(10),
  child: TextField(
    controller: widget.controller,
    obscureText: widget.obscureText,
    decoration: InputDecoration(
      prefixIcon: widget.prefixIcon, // Menggunakan widget prefixIcon
      border: const OutlineInputBorder(),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: ColorManager.pinkL1,
        ),
      ),
      hintText: widget.hintText,
       // Menggunakan widget hintText
      suffixIcon: widget.suffixIcon,
    ),
  ),
);


    // Container(
    //   padding: const EdgeInsets.all(10),
    //   child: TextFormField(
    //     controller: emailController,
    //     keyboardType: TextInputType.emailAddress,
    //     decoration: InputDecoration(
    //       prefixIcon: Icon(
    //         Icons.email,
    //         color: ColorManager.pinkL1,
    //       ),
    //       border: const OutlineInputBorder(),
    //       hintText: 'Email',
    //       focusedBorder: OutlineInputBorder(
    //         borderSide: BorderSide(
    //           color: ColorManager.pinkL1,
    //         ),
    //       ),
    //     ),
    //   ),
    // ),
  }
}
