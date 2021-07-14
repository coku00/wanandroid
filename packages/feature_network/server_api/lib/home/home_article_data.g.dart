// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_article_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomeArticleData _$HomeArticleDataFromJson(Map<String, dynamic> json) {
  return HomeArticleData()
    ..errorMsg = json['errorMsg'] as String?
    ..errorCode = json['errorCode'] as int?
    ..data = json['data'] == null
        ? null
        : Data.fromJson(json['data'] as Map<String, dynamic>);
}

Map<String, dynamic> _$HomeArticleDataToJson(HomeArticleData instance) =>
    <String, dynamic>{
      'errorMsg': instance.errorMsg,
      'errorCode': instance.errorCode,
      'data': instance.data,
    };

Data _$DataFromJson(Map<String, dynamic> json) {
  return Data()
    ..curPage = json['curPage'] as int?
    ..offset = json['offset'] as int?
    ..pageCount = json['pageCount'] as int?
    ..total = json['total'] as int?
    ..size = json['size'] as int?
    ..over = json['over'] as bool?
    ..datas = (json['datas'] as List<dynamic>?)
        ?.map((e) => ArticleInfo.fromJson(e as Map<String, dynamic>))
        .toList();
}

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'curPage': instance.curPage,
      'offset': instance.offset,
      'pageCount': instance.pageCount,
      'total': instance.total,
      'size': instance.size,
      'over': instance.over,
      'datas': instance.datas,
    };

ArticleInfo _$ArticleBeanFromJson(Map<String, dynamic> json) {
  return ArticleInfo()
    ..apkLink = json['apkLink'] as String?
    ..audit = json['audit'] as int?
    ..author = json['author'] as String?
    ..canEdit = json['canEdit'] as bool?
    ..chapterId = json['chapterId'] as int?
    ..id = json['id'] as int?
    ..chapterName = json['chapterName'] as String?
    ..collect = json['collect'] as bool?
    ..fresh = json['fresh'] as bool?
    ..desc = json['desc'] as String?
    ..descMd = json['descMd'] as String?
    ..envelopePic = json['envelopePic'] as String?
    ..host = json['host'] as String?
    ..link = json['link'] as String?
    ..niceDate = json['niceDate'] as String?
    ..niceShareDate = json['niceShareDate'] as String?
    ..origin = json['origin'] as String?
    ..prefix = json['prefix'] as String?
    ..projectLink = json['projectLink'] as String?
    ..publishTime = json['publishTime'] as int?
    ..realSuperChapterId = json['realSuperChapterId'] as int?
    ..selfVisible = json['selfVisible'] as int?
    ..shareDate = json['shareDate'] as int?
    ..type = json['type'] as int?
    ..visible = json['visible'] as int?
    ..superChapterId = json['superChapterId'] as int?
    ..shareUser = json['shareUser'] as String?
    ..superChapterName = json['superChapterName'] as String?
    ..title = json['title'] as String?
    ..zan = json['zan'] as int?;
}

Map<String, dynamic> _$ArticleBeanToJson(ArticleInfo instance) =>
    <String, dynamic>{
      'apkLink': instance.apkLink,
      'audit': instance.audit,
      'author': instance.author,
      'canEdit': instance.canEdit,
      'chapterId': instance.chapterId,
      'id': instance.id,
      'chapterName': instance.chapterName,
      'collect': instance.collect,
      'fresh': instance.fresh,
      'desc': instance.desc,
      'descMd': instance.descMd,
      'envelopePic': instance.envelopePic,
      'host': instance.host,
      'link': instance.link,
      'niceDate': instance.niceDate,
      'niceShareDate': instance.niceShareDate,
      'origin': instance.origin,
      'prefix': instance.prefix,
      'projectLink': instance.projectLink,
      'publishTime': instance.publishTime,
      'realSuperChapterId': instance.realSuperChapterId,
      'selfVisible': instance.selfVisible,
      'shareDate': instance.shareDate,
      'type': instance.type,
      'visible': instance.visible,
      'superChapterId': instance.superChapterId,
      'shareUser': instance.shareUser,
      'superChapterName': instance.superChapterName,
      'title': instance.title,
      'zan': instance.zan,
    };

HomeBannerData _$HomeBannerDataFromJson(Map<String, dynamic> json) {
  return HomeBannerData()
    ..errorMsg = json['errorMsg'] as String?
    ..errorCode = json['errorCode'] as int?
    ..data = (json['data'] as List<dynamic>?)
        ?.map((e) => BannerInfo.fromJson(e as Map<String, dynamic>))
        .toList();
}

Map<String, dynamic> _$HomeBannerDataToJson(HomeBannerData instance) =>
    <String, dynamic>{
      'errorMsg': instance.errorMsg,
      'errorCode': instance.errorCode,
      'data': instance.data,
    };

BannerInfo _$BannerInfoFromJson(Map<String, dynamic> json) {
  return BannerInfo()
    ..desc = json['desc'] as String?
    ..id = json['id'] as int?
    ..isVisible = json['isVisible'] as int?
    ..order = json['order'] as int?
    ..type = json['type'] as int?
    ..imagePath = json['imagePath'] as String?
    ..url = json['url'] as String?
    ..title = json['title'] as String?;
}

Map<String, dynamic> _$BannerInfoToJson(BannerInfo instance) =>
    <String, dynamic>{
      'desc': instance.desc,
      'id': instance.id,
      'isVisible': instance.isVisible,
      'order': instance.order,
      'type': instance.type,
      'imagePath': instance.imagePath,
      'url': instance.url,
      'title': instance.title,
    };
