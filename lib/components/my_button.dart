import 'package:app_gym/resources/color_manager.dart';
import 'package:flutter/material.dart';

class ButtonLogin extends StatefulWidget {

  final Function()? onTap;
  final String name;

  const ButtonLogin({Key? key, required this.onTap, required this.name}) : super(key: key);

  @override
  State<ButtonLogin> createState() => _ButtonLoginState();

}

class _ButtonLoginState extends State<ButtonLogin> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        padding: EdgeInsets.all(20),
        margin: EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          color: ColorManager.pinkL1,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Text(
            widget.name,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}
