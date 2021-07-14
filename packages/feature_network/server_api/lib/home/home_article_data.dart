import 'package:json_annotation/json_annotation.dart';

part 'home_article_data.g.dart';

@JsonSerializable()
class HomeArticleData {
  String? errorMsg;
  int? errorCode;
  Data? data;

  HomeArticleData();

  factory HomeArticleData.fromJson(Map<String, dynamic> json) =>
      _$HomeArticleDataFromJson(json);

  @override
  String toString() {
    return _$HomeArticleDataToJson(this).toString();
  }
}

@JsonSerializable()
class Data {
  int? curPage;
  int? offset;
  int? pageCount;
  int? total;
  int? size;
  bool? over;
  List<ArticleInfo>? datas;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Data();

  @override
  String toString() {
    return _$DataToJson(this).toString();
  }
}

@JsonSerializable()
class ArticleInfo {
  String? apkLink;
  int? audit;
  String? author;
  bool? canEdit;
  int? chapterId;
  int? id;
  String? chapterName;
  bool? collect;
  bool? fresh;
  String? desc;
  String? descMd;
  String? envelopePic;
  String? host;
  String? link;
  String? niceDate;
  String? niceShareDate;
  String? origin;
  String? prefix;
  String? projectLink;
  int? publishTime;
  int? realSuperChapterId;
  int? selfVisible;
  int? shareDate;
  int? type;
  int? visible;
  int? superChapterId;
  String? shareUser;
  String? superChapterName;
  String? title;
  int? zan;

  ArticleInfo();

  factory ArticleInfo.fromJson(Map<String, dynamic> json) =>
      _$ArticleBeanFromJson(json);

  @override
  String toString() {
    return _$ArticleBeanToJson(this).toString();
  }
}

@JsonSerializable()
class HomeBannerData {
  String? errorMsg;
  int? errorCode;
  List<BannerInfo>? data;

  HomeBannerData();

  factory HomeBannerData.fromJson(Map<String, dynamic> json) =>
      _$HomeBannerDataFromJson(json);
}

@JsonSerializable()
class BannerInfo {
  String? desc;
  int? id;
  int? isVisible;
  int? order;
  int? type;
  String? imagePath;
  String? url;
  String? title;

  BannerInfo();

  factory BannerInfo.fromJson(Map<String, dynamic> json) =>
      _$BannerInfoFromJson(json);
}
