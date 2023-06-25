import 'package:dio/dio.dart';

abstract class Failure {
  final errorMesage;

  Failure(this.errorMesage);
}

class ServerFailuer extends Failure {
  ServerFailuer(super.errorMesage);

  factory ServerFailuer.fromDioException(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailuer('Connection time out with ApiServer');

      case DioExceptionType.sendTimeout:
        return ServerFailuer('Send time out with ApiServer');

      case DioExceptionType.receiveTimeout:
        return ServerFailuer('Receive time out with ApiServer');

      case DioExceptionType.badCertificate:
        return ServerFailuer('Bad Certificate with ApiServer');

      case DioExceptionType.badResponse:
        return ServerFailuer('Requset with ApiServer wsa bad response');

      case DioExceptionType.cancel:
        return ServerFailuer('Requset with ApiServer was cancel');

      case DioExceptionType.connectionError:
        return ServerFailuer('Connection was error with ApiServer');

      case DioExceptionType.unknown:
        return ServerFailuer('Opps, Unknown error');
      default:
        return ServerFailuer('Opps,Error');
    }
  }

  factory ServerFailuer.fromResponse(int stutsCode, dynamic response) {
    if (stutsCode == 400 || stutsCode == 401 || stutsCode == 403) {
      return ServerFailuer(response["error"]["message"]);
    } else if (stutsCode == 404) {
      return ServerFailuer('not found ,, try later');
    } else if (stutsCode == 500) {
      return ServerFailuer('Server error , try later');
    } else {
      return ServerFailuer('Opps,Error');
    }
  }
}
