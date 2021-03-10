import 'package:dio/dio.dart';
import 'package:espresso_app_test/helpers/http_exceptions.dart';

class AppDioInterceptors extends InterceptorsWrapper {
  @override
  onRequest(RequestOptions options) async {
    print(options);
  }

  @override
  Future onError(DioError err) async {
    if (err.type == DioErrorType.CONNECT_TIMEOUT) {
      throw TimeOutException();
    }
    if (err.response.statusCode >= 500) {
      throw InternalServerError();
    }
    switch (err.response.statusCode) {
      case 400:
        throw BadRequestException(message: err.response.data['message']);
        break;
      case 404:
        throw NotFoundException(message: err.response.data['message']);
        break;
      case 401:
        throw UnauthorizedException(message: err.response.data['message']);
        break;
      case 422:
        throw UnprocessableEntity(message: err.response.data['message']);
        break;
      default:
        throw err;
    }
  }

  @override
  onResponse(Response response) async {
    return response;
  }
}