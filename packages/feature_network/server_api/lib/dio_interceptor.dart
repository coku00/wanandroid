import 'package:dio/dio.dart';

class DioInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    super.onResponse(response, handler);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    super.onError(err, handler);
  }
}

class TokenInterceptor extends Interceptor {
  static String? _userName = 'loginUserName=router';
  static String? _passWorld = 'token_pass=72fe93d10ceab1270138b48d4b3a2e0e';

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    if (_userName != null && _passWorld != null) {
      options.headers['Cookie'] = '$_userName;$_passWorld';
    }
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    super.onResponse(response, handler);
    print(
        "==================================================================================================");
     print(response.data);

    var cookies = response.headers['set-cookie'];
    cookies?.forEach((element) {
      if (element.startsWith('loginUserName=')) {
        _userName = element.split(';')[0];
        print('userName = $_userName');
      } else if (element.startsWith('token_pass=')) {
        _passWorld = element.split(';')[0];
        print('_passWorld = $_passWorld');
      }
    });

    print(
        "==================================================================================================");
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    super.onError(err, handler);
  }
}
