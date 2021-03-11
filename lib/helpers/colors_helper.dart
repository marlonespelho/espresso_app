import 'package:flutter/material.dart';

class ColorsHelper {
  static Color hexToColor(String code) {
    return new Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
  }

  static final primary = hexToColor("#ea4c89");
  static final primaryDark = hexToColor("#b3015c");
  static final accent = hexToColor("#444444");
  static final whiteSmoke = hexToColor("#F5F5F5");
  static final error = hexToColor('#E53E3E');
  static final neutral700 = hexToColor('#4A5568');
}