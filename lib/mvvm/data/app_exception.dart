// ignore_for_file: prefer_typing_uninitialized_variables, annotate_overrides

class AppException implements Exception {
  final _message;
  final _prefix;

  AppException([this._message, this._prefix]);

  String toString() {
    return '$_prefix $_message';
  }
}

class ServerException extends AppException {
  ServerException([String? message]) : super(message, '');
}

class RequestTimeout extends AppException {
  RequestTimeout([String? message]) : super(message, '');
}
