import 'package:server_api/home/home_article_data.dart';

class HomeBean<T> {
  HomeType? type;
  T? itemData;

  set data(T data) {
    this.itemData = data;
  }
}

class HomeBannerBean extends HomeBean<List<BannerInfo>> {
  @override
  HomeType? get type => HomeType.banner;
}

class HomeArticleBean extends HomeBean<ArticleInfo> {
  @override
  HomeType? get type => HomeType.article;
}

enum HomeType { banner, article }
