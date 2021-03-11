import 'package:espresso_app_test/helpers/colors_helper.dart';
import 'package:flutter/material.dart';

class AppSafeArea extends StatelessWidget {
  final Widget child;

  var color;

  AppSafeArea({@required this.child, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color ?? ColorsHelper.primaryDark,
      child: SafeArea(
        child: this.child,
        top: true,
      ),

    );
  }
}
