import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:home_ui/bean.dart';
import 'package:server_api/home/home_article_data.dart';
import 'home_model.dart';
import 'loading_vm.dart';

class HomeViewModel extends BaseViewModel {
  int page = 0;
  HomeBannerBean _bannerData = HomeBannerBean();
  List<HomeArticleBean> _articleData = [];

  List<HomeArticleBean> get articleData => _articleData;

  HomeBannerBean get bannerData => _bannerData;

  int itemSize() {
    var v = _bannerData.itemData == null ? 0 : 1;
    return articleData.length + v;
  }

  HomeModel _model = HomeModel();

  bool _error = false;

  bool _noMore = false;

  get noMore => _noMore;

  get showError => _error;

  // set showError(error) {
  //   _error = error;
  //   notifyListeners();
  // }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
  }

  void queryData() {
    page = 0;
    Future.wait([_model.getBanner(), _model.getArticleList('$page')])
        .then((values) {
      articleData.clear();
      values.forEach((element) {
        if (element is List<BannerInfo>?) {
          List<BannerInfo> banners = element as List<BannerInfo>;
          bannerData.itemData = banners;
        }
        if (element is List<ArticleInfo>?) {
          List<ArticleInfo>? articleInfos = element;
          articleInfos!.forEach((e) {
            var item = HomeArticleBean();
            item.data = e;
            articleData.add(item);
          });
        }
      });
      print('size = ${articleData.length}');
      status = RefreshStatus.complete;
      // notifyListeners();
    });
  }

  void loadMore() {
    ++page;
    _model.getArticleList('$page').then((value) {
      {
        if (value!.isEmpty) {
          _noMore = true;
        } else {
          value.forEach((element) {
            if (element is List<ArticleInfo>?) {
              List<ArticleInfo>? articles = element as List<ArticleInfo>?;
              articles!.forEach((e) {
                var item = HomeArticleBean();
                item.data = e;
                articleData.add(item);
              });
            }
          });
          status = RefreshStatus.complete;
        }
      }
    });
  }
}
