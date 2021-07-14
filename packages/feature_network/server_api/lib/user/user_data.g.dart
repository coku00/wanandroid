// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserInfo _$UserInfoFromJson(Map<String, dynamic> json) {
  return UserInfo()
    ..errorMsg = json['errorMsg'] as String?
    ..errorCode = json['errorCode'] as int?
    ..data = json['data'] == null
        ? null
        : Data.fromJson(json['data'] as Map<String, dynamic>);
}

Map<String, dynamic> _$UserInfoToJson(UserInfo instance) => <String, dynamic>{
      'errorMsg': instance.errorMsg,
      'errorCode': instance.errorCode,
      'data': instance.data,
    };

Data _$DataFromJson(Map<String, dynamic> json) {
  return Data();
}

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{};

RegisterInfo _$RegisterInfoFromJson(Map<String, dynamic> json) {
  return RegisterInfo()
    ..errorMsg = json['errorMsg'] as String?
    ..errorCode = json['errorCode'] as int?
    ..data = json['data'] == null
        ? null
        : RegisterData.fromJson(json['data'] as Map<String, dynamic>);
}

Map<String, dynamic> _$RegisterInfoToJson(RegisterInfo instance) =>
    <String, dynamic>{
      'errorMsg': instance.errorMsg,
      'errorCode': instance.errorCode,
      'data': instance.data,
    };

RegisterData _$RegisterDataFromJson(Map<String, dynamic> json) {
  return RegisterData()
    ..admin = json['admin'] as bool?
    ..chapterTops = json['chapterTops'] as List<dynamic>?
    ..coinCount = json['coinCount'] as List<dynamic>?
    ..collectIds = json['collectIds'] as List<dynamic>?
    ..email = json['email'] as String?
    ..icon = json['icon'] as String?
    ..nickname = json['nickname'] as String?
    ..password = json['password'] as String?
    ..id = json['id'] as int?
    ..type = json['type'] as int?;
}

Map<String, dynamic> _$RegisterDataToJson(RegisterData instance) =>
    <String, dynamic>{
      'admin': instance.admin,
      'chapterTops': instance.chapterTops,
      'coinCount': instance.coinCount,
      'collectIds': instance.collectIds,
      'email': instance.email,
      'icon': instance.icon,
      'nickname': instance.nickname,
      'password': instance.password,
      'id': instance.id,
      'type': instance.type,
    };
