import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:home_ui/bean.dart';
import 'package:server_api/home/home_article_data.dart';
import 'home_model.dart';

class HomeViewModel with ChangeNotifier, DiagnosticableTreeMixin {
  int page = 0;
  List<HomeBean> _data = [];

  List<HomeBean> get homeData => _data;

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
      _data.clear();
      values.forEach((element) {
        if (element is List<BannerInfo>?) {
          var item = HomeBannerBean();
          List<BannerInfo> banners = element as List<BannerInfo>;
          item.data = banners;
          _data.first = item;
        }

        if (element is List<ArticleInfo>?) {
          List<ArticleInfo>? articleInfos = element;
          articleInfos!.forEach((e) {
            var item = HomeArticleBean();
            item.data = e;
            _data.add(item);
          });
        }

        notifyListeners();
      });
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
              List<ArticleInfo>? articleInfos =
              element as List<ArticleInfo>?;
              articleInfos!.forEach((e) {
                var item = HomeArticleBean();
                item.data = e;
                _data.add(item);
              });
            }
          });
          notifyListeners();
        }
      }
    });
  }
}
