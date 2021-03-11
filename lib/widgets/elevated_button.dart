import 'package:espresso_app_test/helpers/colors_helper.dart';
import 'package:espresso_app_test/widgets/text_field.dart';
import 'package:flutter/material.dart';

class AppElevatedButton extends StatelessWidget {
  Function onPressed;
  final text;
  final width;
  final height;
  final margin;
  bool showProgressIndicator;
  final color;
  final textColor;
  final textSize;

  bool bold;

  AppElevatedButton({
    this.text = '',
    @required this.onPressed,
    this.height = 35.0,
    this.width,
    this.margin,
    this.showProgressIndicator = false,
    this.color,
    this.textColor,
    this.textSize = 16.0,
    this.bold = true,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      height: height,
      width: width,
      child: ElevatedButton(
        child: _content(),
        style: _style(),
        onPressed: onPressed == null
            ? null
            : () => showProgressIndicator ? null : onPressed(),
      ),
    );
  }

  _style() {
    return ElevatedButton.styleFrom(
      primary: ColorsHelper.primary,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(16))),
    );
  }

  _content() {
    return showProgressIndicator
        ? Padding(
            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 4),
            child: CircularProgressIndicator(
              strokeWidth: 2,
              valueColor: AlwaysStoppedAnimation<Color>(
                textColor ?? ColorsHelper.accent,
              ),
            ),
          )
        : this.text is String
            ? AppText(
                text: text,
                size: textSize,
                color: textColor ?? ColorsHelper.accent,
                bold: bold,
              )
            : this.text;
  }
}
