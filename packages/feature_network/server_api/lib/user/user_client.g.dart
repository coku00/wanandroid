// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_client.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _UserClient implements UserClient {
  _UserClient(this._dio, {this.baseUrl}) {
    baseUrl ??= 'https://www.wanandroid.com';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<UserInfo> login(username, password) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'username': username,
      r'password': password
    };
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<UserInfo>(
            Options(method: 'POST', headers: <String, dynamic>{}, extra: _extra)
                .compose(_dio.options, '/user/login',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = UserInfo.fromJson(_result.data!);
    return value;
  }

  @override
  Future<UserInfo> register(username, password, repassword) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'username': username,
      r'password': password,
      r'repassword': repassword
    };
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<UserInfo>(
            Options(method: 'POST', headers: <String, dynamic>{}, extra: _extra)
                .compose(_dio.options, '/user/register',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = UserInfo.fromJson(_result.data!);
    return value;
  }

  @override
  Future<dynamic> collect(page) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch(_setStreamType<dynamic>(
        Options(method: 'GET', headers: <String, dynamic>{}, extra: _extra)
            .compose(_dio.options, '/lg/collect/list/$page/json',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = _result.data;
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
