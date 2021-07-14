import 'package:json_annotation/json_annotation.dart';

part 'user_data.g.dart';

@JsonSerializable()
class UserInfo {
  String? errorMsg;
  int? errorCode;
  Data? data;

  UserInfo();

  factory UserInfo.fromJson(Map<String, dynamic> json) =>
      _$UserInfoFromJson(json);
}

@JsonSerializable()
class Data {
  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Data();
}

@JsonSerializable()
class RegisterInfo {
  String? errorMsg;
  int? errorCode;
  RegisterData? data;

  RegisterInfo();

  factory RegisterInfo.fromJson(Map<String, dynamic> json) =>
      _$RegisterInfoFromJson(json);
}

@JsonSerializable()
class RegisterData {
  bool? admin;
  List? chapterTops;
  List? coinCount;
  List? collectIds;
  String? email;
  String? icon;
  String? nickname;
  String? password;
  int? id;
  int? type;

  RegisterData();

  factory RegisterData.fromJson(Map<String, dynamic> json) =>
      _$RegisterDataFromJson(json);
}
