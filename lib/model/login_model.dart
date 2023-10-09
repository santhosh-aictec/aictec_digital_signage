import 'dart:ffi';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_model.freezed.dart';
part 'login_model.g.dart';

@freezed
class LoginResponse with _$LoginResponse {
  factory LoginResponse({
    @JsonKey(name: 'access_token') required String accessToken,
    @JsonKey(name: 'refresh_token') required String refreshToken,
    @JsonKey(name: 'success') required bool success,
    @JsonKey(name: 'message') required String message,
    @JsonKey(name: 'user') required User user,
    @JsonKey(name: 'role') required Role role,
  }) = _LoginResponse;

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);
}

@freezed
class User with _$User {
  factory User({
    @JsonKey(name: 'email') required String email,
    @JsonKey(name: 'sub') required int sub,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'role') required String role,
    @JsonKey(name: 'companyId') required int companyId,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) =>
      _$UserFromJson(json);
}

@freezed
class Role with _$Role {
  factory Role({

    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'permissions') required String permissions,
    @JsonKey(name: 'isActive') required bool isActive,
    @JsonKey(name: 'companyId') required int companyId,
    @JsonKey(name: 'dateCreated') required String dateCreated,
    @JsonKey(name: 'dateUpdated') required String dateUpdated,
  }) = _Role;

  factory Role.fromJson(Map<String, dynamic> json) =>
      _$RoleFromJson(json);
}