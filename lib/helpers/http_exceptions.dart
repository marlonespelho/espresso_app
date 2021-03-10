import 'dart:io';
import 'package:espresso_app_test/enuns/request_status.dart';

class UnprocessableEntity implements HttpException {
  String _message;

  @override
  String get message => this._message == null
      ? 'Dados para requisição incompletos'
      : this._message;

  @override
  Uri get uri => null;

  @override
  String toString() {
    return 'UnprocessableEntity';
  }

  UnprocessableEntity({message}) {
    this._message = message;
  }
}

class NotFoundException implements HttpException {
  @override
  String get message => _message ?? 'Não Encontrado';
  String _message;

  @override
  Uri get uri => null;

  NotFoundException({message}) {
    this._message = message;
  }

  @override
  String toString() {
    return 'NotFoundException';
  }
}

class NoConnectionException implements HttpException {
  @override
  String get message => _message ?? 'Sem Conexão';
  String _message;

  @override
  Uri get uri => null;

  NoConnectionException({message}) {
    this._message = message;
  }

  @override
  String toString() {
    return 'NoConnectionException';
  }
}

class TimeOutException implements HttpException {
  @override
  String get message => _message ?? 'Tempo de requisição expirado';
  String _message;

  @override
  Uri get uri => null;

  TimeOutException({message}) {
    this._message = message;
  }

  @override
  String toString() {
    return 'TimeOutException';
  }
}

class BadRequestException implements HttpException {
  String _message;

  @override
  String get message =>
      this._message == null ? 'Não Autorizado' : this._message;

  @override
  Uri get uri => null;

  @override
  String toString() {
    return 'BadRequestException';
  }

  BadRequestException({message}) {
    this._message = message;
  }
}

class UnauthorizedException implements HttpException {
  String _message;

  @override
  String get message => _message ?? 'Não Autorizado';

  @override
  Uri get uri => null;

  UnauthorizedException({message}) {
    this._message = message;
  }

  @override
  String toString() {
    return 'UnauthorizedException';
  }
}

class InternalServerError implements HttpException {
  String _message;

  @override
  String get message =>
      _message ?? 'Serviço indisponível no momento, tente novamente mais tarde';

  @override
  Uri get uri => null;

  InternalServerError({message}) {
    this._message = message;
  }

  @override
  String toString() {
    return 'InternalServerError';
  }
}

httpExceptionHandling(error) {
  try {
    return {
          'TimeOutException': RequestStatus.TIME_OUT,
          'NoConnectionException': RequestStatus.CONNECTION_ERROR,
          'NotFoundException': RequestStatus.NOT_FOUND,
          'UnauthorizedException': RequestStatus.UNAUTHORIZED,
          'InternalServerError': RequestStatus.INTERNAL_SERVER_ERROR,
          'UnprocessableEntity': RequestStatus.UNPROCESSABLE_ENTITY,
          'BadRequestException': RequestStatus.BAD_REQUEST,
        }[error] ??
        RequestStatus.FAIL;
  } catch (e) {
    return RequestStatus.FAIL;
  }
}
