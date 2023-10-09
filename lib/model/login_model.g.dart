// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LoginResponse _$$_LoginResponseFromJson(Map<String, dynamic> json) =>
    _$_LoginResponse(
      accessToken: json['access_token'] as String,
      refreshToken: json['refresh_token'] as String,
      success: json['success'] as bool,
      message: json['message'] as String,
      user: User.fromJson(json['user'] as Map<String, dynamic>),
      role: Role.fromJson(json['role'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_LoginResponseToJson(_$_LoginResponse instance) =>
    <String, dynamic>{
      'access_token': instance.accessToken,
      'refresh_token': instance.refreshToken,
      'success': instance.success,
      'message': instance.message,
      'user': instance.user,
      'role': instance.role,
    };

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      email: json['email'] as String,
      sub: json['sub'] as int,
      name: json['name'] as String,
      role: json['role'] as String,
      companyId: json['companyId'] as int,
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'email': instance.email,
      'sub': instance.sub,
      'name': instance.name,
      'role': instance.role,
      'companyId': instance.companyId,
    };

_$_Role _$$_RoleFromJson(Map<String, dynamic> json) => _$_Role(
      id: json['id'] as int,
      name: json['name'] as String,
      permissions: json['permissions'] as String,
      isActive: json['isActive'] as bool,
      companyId: json['companyId'] as int,
      dateCreated: json['dateCreated'] as String,
      dateUpdated: json['dateUpdated'] as String,
    );

Map<String, dynamic> _$$_RoleToJson(_$_Role instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'permissions': instance.permissions,
      'isActive': instance.isActive,
      'companyId': instance.companyId,
      'dateCreated': instance.dateCreated,
      'dateUpdated': instance.dateUpdated,
    };
