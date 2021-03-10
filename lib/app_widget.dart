import 'package:espresso_app_test/modules/auth/auth_module.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatefulWidget {
  @override
  _AppWidgetState createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Espresso Dribbble',
      home: AuthModule(),
      debugShowCheckedModeBanner: false,
    );
  }
}
