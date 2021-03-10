import 'package:dio/dio.dart';
import 'package:espresso_app_test/dio/interceptors/app_dio_interceptors.dart';
import 'package:global_configuration/global_configuration.dart';

class AppDio {
  final Dio client;

  AppDio(this.client) {
    client.options.baseUrl = GlobalConfiguration().get("DRIBBBLE_API_BASE_URL");
    client.options.connectTimeout = 20000;
    client.options.receiveTimeout = 20000;
    client.interceptors.add(AppDioInterceptors());
  }
}
