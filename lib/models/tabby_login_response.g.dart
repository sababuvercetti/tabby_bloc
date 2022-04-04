// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tabby_login_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TabbyLoginResponse _$$_TabbyLoginResponseFromJson(
        Map<String, dynamic> json) =>
    _$_TabbyLoginResponse(
      name: json['name'] as String?,
      token: json['token'] as String?,
      email: json['email'] as String?,
      password: json['password'] as String?,
      id: json['id'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$$_TabbyLoginResponseToJson(
        _$_TabbyLoginResponse instance) =>
    <String, dynamic>{
      'name': instance.name,
      'token': instance.token,
      'email': instance.email,
      'password': instance.password,
      'id': instance.id,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
