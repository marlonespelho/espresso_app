import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:espresso_app_test/modules/auth/auth_widget.dart';
import 'package:flutter/src/widgets/framework.dart';

class AuthModule extends ModuleWidget {

  List<Bloc> get blocs =>[];

  @override
  List<Dependency> get dependencies => [];

  @override
  Widget get view => AuthWidget();

  static Inject get to => Inject<AuthModule>.of();

}