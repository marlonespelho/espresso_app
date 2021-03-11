import 'package:espresso_app_test/generated/l10n.dart';
import 'package:espresso_app_test/helpers/colors_helper.dart';
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
      localizationsDelegates: [
        S.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        backgroundColor: ColorsHelper.whiteSmoke,
        scaffoldBackgroundColor: ColorsHelper.whiteSmoke,
        primaryColor: ColorsHelper.primary,
        accentColor: ColorsHelper.accent,
      ),
    );
  }
}
