// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mac_address_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MacAddressModel _$$_MacAddressModelFromJson(Map<String, dynamic> json) =>
    _$_MacAddressModel(
      device: Device.fromJson(json['device'] as Map<String, dynamic>),
      tenant: Tenant.fromJson(json['tenant'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_MacAddressModelToJson(_$_MacAddressModel instance) =>
    <String, dynamic>{
      'device': instance.device,
      'tenant': instance.tenant,
    };

_$_Device _$$_DeviceFromJson(Map<String, dynamic> json) => _$_Device(
      id: json['id'] as int,
      name: json['name'] as String,
      macId: json['macId'] as String,
      orientation: json['orientation'] as String,
      location: json['location'] as String,
      companyId: json['companyId'] as int,
      userId: json['userId'] as int,
      isActive: json['isActive'] as bool,
      dateCreated: json['dateCreated'] as String,
      dateUpdated: json['dateUpdated'] as String,
    );

Map<String, dynamic> _$$_DeviceToJson(_$_Device instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'macId': instance.macId,
      'orientation': instance.orientation,
      'location': instance.location,
      'companyId': instance.companyId,
      'userId': instance.userId,
      'isActive': instance.isActive,
      'dateCreated': instance.dateCreated,
      'dateUpdated': instance.dateUpdated,
    };

_$_Tenant _$$_TenantFromJson(Map<String, dynamic> json) => _$_Tenant(
      id: json['id'] as int,
      name: json['name'] as String,
      address: json['address'] as String,
      phone: json['phone'] as String,
      description: json['description'] as String,
      isActive: json['isActive'] as bool,
      dateCreated: json['dateCreated'] as String,
      dateUpdated: json['dateUpdated'] as String,
    );

Map<String, dynamic> _$$_TenantToJson(_$_Tenant instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'address': instance.address,
      'phone': instance.phone,
      'description': instance.description,
      'isActive': instance.isActive,
      'dateCreated': instance.dateCreated,
      'dateUpdated': instance.dateUpdated,
    };
