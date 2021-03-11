import 'package:espresso_app_test/helpers/colors_helper.dart';
import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  final text;
  final color;
  final size;
  final bold;
  final align;
  final fontFamily;
  final maxLines;
  final TextDecoration underline;

  AppText(
      {this.text = '',
      this.color,
      this.size = 16,
      this.bold = false,
      this.align = TextAlign.left,
      this.fontFamily = 'Poppins',
      this.maxLines = 1,
      this.underline});

  @override
  Widget build(BuildContext context) {
    return Text(
      text ?? 'N/A',
      textAlign: align,
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
        color: this.color ?? ColorsHelper.neutral700,
        fontSize: size,
        fontFamily: fontFamily,
        decoration: underline,
        fontWeight: bold ? FontWeight.bold : FontWeight.normal,
      ),
    );
  }
}
