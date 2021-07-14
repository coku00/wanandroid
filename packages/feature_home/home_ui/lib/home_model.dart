import 'package:server_api/dio_impl.dart';
import 'package:server_api/home/home_article_data.dart';
import 'package:server_api/home/home_client.dart';

class HomeModel {
  late HomeClient _client;

  HomeModel() {
    _client = HomeClient(DioFactory().dio);
  }

  Future<List<ArticleInfo>?> getArticleList(String page) async {
    var homeArticle = await _client.getArticleList(page);
    return homeArticle.data?.datas;
  }

  Future<List<BannerInfo>?> getBanner() async {
    var homeBanner = await _client.getBanner();
    return homeBanner.data;
  }
}
