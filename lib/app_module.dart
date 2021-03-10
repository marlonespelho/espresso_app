import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:dio/dio.dart';
import 'package:espresso_app_test/app_widget.dart';
import 'package:espresso_app_test/dio/app_dio.dart';
import 'package:flutter/material.dart';

class AppModule extends ModuleWidget {
  @override
  List<Bloc> get blocs => [];

  @override
  List<Dependency> get dependencies => [
        Dependency((i) => AppDio(Dio())),
      ];

  @override
  Widget get view => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
