import 'package:espresso_app_test/generated/l10n.dart';
import 'package:espresso_app_test/widgets/elevated_button.dart';
import 'package:espresso_app_test/widgets/safe_area.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AuthWidget extends StatefulWidget {
  @override
  _AuthWidgetState createState() => _AuthWidgetState();
}

class _AuthWidgetState extends State<AuthWidget> {
  @override
  Widget build(BuildContext context) {
    return AppSafeArea(
      child: Scaffold(
        body: _body(),
      ),
    );
  }

  _body() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _logo(),
        _loginButton(),
      ],
    );
  }

  _logo() {
    return Container(
      margin: EdgeInsets.only(bottom: 32),
      child: SvgPicture.asset("assets/icons/dribbble-logo.svg"),
    );
  }

  _loginButton() {
    return AppElevatedButton(
      onPressed: () => {},
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.symmetric(horizontal: 16),
      text: S.of(context).login,
    );
  }
}
