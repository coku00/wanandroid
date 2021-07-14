import 'package:dio/dio.dart';
import 'package:server_api/dio_interceptor.dart';

class DioFactory {
  static DioFactory _dioFactory = DioFactory._();

  factory DioFactory() => _dioFactory;

  late Dio _dio;

  DioFactory._() {
    _dio = Dio();
    _dio.interceptors.add(TokenInterceptor());
  }

  Dio get dio => _dio;
}
