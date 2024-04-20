import 'package:flutter/material.dart';

class ColorManager {
  static Color primary = HexColor.fromHex("#63DD3E");
  static Color darkPrimary = HexColor.fromHex("#00AD30");
  static Color darkGrey = HexColor.fromHex("#525252");
  static Color grey = HexColor.fromHex("#737477");
  static Color lightGrey = HexColor.fromHex("#9E9E9E");
  static Color primaryOpacity70 = HexColor.fromHex("#B3000966");
  static Color orange = HexColor.fromHex("#F0BE0D");
  static Color red = HexColor.fromHex("#DA2C38");
  static Color blue = HexColor.fromHex("#05B2DC");

  static Color pinkL1 = HexColor.fromHex("#FE82B9");
  static Color pinkL2 = HexColor.fromHex("#FFA1CF");
  static Color pinkL3 = HexColor.fromHex("#FEB2DD");
  static Color softpink = HexColor.fromHex("#FFD4D7");

  // Brand Color (Primary)
  Color primary0 = const Color(0xffFFFFFF);
  Color primary100 = const Color(0xffCFECFA);
  Color primary200 = const Color(0xffA2D7F6);
  Color primary300 = const Color(0xff70B4E5);
  Color primary400 = const Color(0xff498ECC);
  Color primary500 = const Color(0xff195FAA);
  Color primary600 = const Color(0xff124992);
  Color primary700 = const Color(0xff0C367A);
  Color primary800 = const Color(0xff072662);
  Color primary900 = const Color(0xff041A51);
}

extension HexColor on Color {
  static Color fromHex(String hexColorString) {
    hexColorString = hexColorString.replaceAll('#', '');
    if (hexColorString.length == 6) {
      hexColorString = "FF$hexColorString"; // 8 char with opacity 100%
    }
    return Color(int.parse(hexColorString, radix: 16));
  }
}
