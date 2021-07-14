
import 'package:retrofit/retrofit.dart';
import 'package:server_api/home/home_article_data.dart';
import '../http_api.dart';
import 'package:dio/dio.dart';
part 'home_client.g.dart';

@RestApi(baseUrl: baseUrl)
abstract class HomeClient{
  factory HomeClient(Dio dio, {String baseUrl}) = _HomeClient;

  @GET(articleList)
  Future<HomeArticleData> getArticleList(@Path() String page);

  @GET(banner)
  Future<HomeBannerData> getBanner();
}