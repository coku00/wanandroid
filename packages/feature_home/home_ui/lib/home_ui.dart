library home_ui;

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';
import 'package:home_ui/bean.dart';
import 'package:home_ui/home_vm.dart';
import 'package:provider/provider.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:server_api/home/home_article_data.dart';
import 'loading_vm.dart' as L;

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => HomeViewModel()),
        ChangeNotifierProvider(create: (_) => L.BaseViewModel())
      ],
      child: HomeWidget(),
    ));
  }
}

class HomeWidget extends StatelessWidget {
  late RefreshController _refreshController;

  HomeWidget() {
    _refreshController = RefreshController();
  }

  @override
  Widget build(BuildContext context) {
    HomeViewModel homeViewModel = context.watch<HomeViewModel>();
    switch(homeViewModel.status){
      case L.RefreshStatus.refresh:
        break;
      case L.RefreshStatus.loading:
        break;
      case L.RefreshStatus.complete:
        _refreshController.loadComplete();
        _refreshController.refreshCompleted();
        break;
    }
    return SmartRefresher(
      enablePullDown: true,
      enablePullUp: true,
      header: WaterDropHeader(),
      footer: ClassicFooter(
        loadStyle: LoadStyle.ShowAlways,
        completeDuration: Duration(microseconds: 50),
      ),
      controller: _refreshController,
      onRefresh: () {
        homeViewModel.queryData();
      },
      onLoading: () {
        homeViewModel.loadMore();
      },
      child: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return _buildItem(context, index);
        },
        itemCount: homeViewModel.itemSize(),
      ),
    );
  }

  Widget _buildItem(BuildContext context, int index) {
    HomeViewModel homeViewModel = context.watch<HomeViewModel>();
    HomeBannerBean banners = homeViewModel.bannerData;
    if (index == 0 && banners.itemData != null && banners.itemData!.isNotEmpty) {
      return _buildBanner(banners);
    }

    HomeBean homeBean = homeViewModel.articleData[index - 1];
    if (homeBean.type == HomeType.article) {
      //文章
      return _buildArticle(homeBean as HomeArticleBean);
    }

    return Container();
  }

  Widget _buildBanner(HomeBannerBean banners) {
    var size = banners.itemData!.length;
    return Container(
      height: 200,
      child: Swiper(
        itemBuilder: (BuildContext context, int index) {
          BannerInfo bean = banners.itemData![index];
          return Image.network(bean.imagePath!);
        },
        itemCount: size,
      ),
    );
  }

  Widget _buildArticle(HomeArticleBean homeBean) {
    return Text('');
  }
}
