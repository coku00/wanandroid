import 'package:retrofit/retrofit.dart';
import '../http_api.dart';
import 'package:dio/dio.dart';

import 'user_data.dart';

part 'user_client.g.dart';

@RestApi(baseUrl: baseUrl)
abstract class UserClient {
  factory UserClient(Dio dio, {String baseUrl}) = _UserClient;

  @POST(loginUrl)
  Future<UserInfo> login(
      @Query("username") String username, @Query("password") String password);

  @POST(registerUrl)
  Future<UserInfo> register(
      @Query("username") String username,
      @Query("password") String password,
      @Query("repassword") String repassword);


  @GET(collectUrl)
  Future collect(@Path() String page);
}
