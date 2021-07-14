library home_ui;

import 'package:banners/banners.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:home_ui/bean.dart';
import 'package:home_ui/home_vm.dart';
import 'package:provider/provider.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';


class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => HomeViewModel())],
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
        itemCount: homeViewModel.homeData.length,
      ),
    );
  }

  Widget _buildItem(BuildContext context, int index) {
    HomeViewModel homeViewModel = context.watch<HomeViewModel>();
    HomeBean bannerBean = homeViewModel.homeData.first;
    if (index == 0 && bannerBean is List<HomeBannerBean>) {
      List<HomeBannerBean> banners = bannerBean as List<HomeBannerBean>;
      return _buildBanner(banners);
    }
    HomeBean homeBean = homeViewModel.homeData[index];

    if (homeBean is HomeArticleBean) {
      //文章
      return _buildArticle(homeBean);
    }

    return Container();
  }

  Widget _buildBanner(List<HomeBannerBean> banners) {
    return Bannered(banners: , child: Container());
  }

  Widget _buildArticle(HomeArticleBean homeBean) {
    return Text('');
  }
}
