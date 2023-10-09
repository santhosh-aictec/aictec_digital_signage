// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mac_address_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MacAddressModel _$MacAddressModelFromJson(Map<String, dynamic> json) {
  return _MacAddressModel.fromJson(json);
}

/// @nodoc
mixin _$MacAddressModel {
  @JsonKey(name: 'device')
  Device get device => throw _privateConstructorUsedError;
  @JsonKey(name: 'tenant')
  Tenant get tenant => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MacAddressModelCopyWith<MacAddressModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MacAddressModelCopyWith<$Res> {
  factory $MacAddressModelCopyWith(
          MacAddressModel value, $Res Function(MacAddressModel) then) =
      _$MacAddressModelCopyWithImpl<$Res, MacAddressModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'device') Device device,
      @JsonKey(name: 'tenant') Tenant tenant});

  $DeviceCopyWith<$Res> get device;
  $TenantCopyWith<$Res> get tenant;
}

/// @nodoc
class _$MacAddressModelCopyWithImpl<$Res, $Val extends MacAddressModel>
    implements $MacAddressModelCopyWith<$Res> {
  _$MacAddressModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? device = null,
    Object? tenant = null,
  }) {
    return _then(_value.copyWith(
      device: null == device
          ? _value.device
          : device // ignore: cast_nullable_to_non_nullable
              as Device,
      tenant: null == tenant
          ? _value.tenant
          : tenant // ignore: cast_nullable_to_non_nullable
              as Tenant,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DeviceCopyWith<$Res> get device {
    return $DeviceCopyWith<$Res>(_value.device, (value) {
      return _then(_value.copyWith(device: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TenantCopyWith<$Res> get tenant {
    return $TenantCopyWith<$Res>(_value.tenant, (value) {
      return _then(_value.copyWith(tenant: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_MacAddressModelCopyWith<$Res>
    implements $MacAddressModelCopyWith<$Res> {
  factory _$$_MacAddressModelCopyWith(
          _$_MacAddressModel value, $Res Function(_$_MacAddressModel) then) =
      __$$_MacAddressModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'device') Device device,
      @JsonKey(name: 'tenant') Tenant tenant});

  @override
  $DeviceCopyWith<$Res> get device;
  @override
  $TenantCopyWith<$Res> get tenant;
}

/// @nodoc
class __$$_MacAddressModelCopyWithImpl<$Res>
    extends _$MacAddressModelCopyWithImpl<$Res, _$_MacAddressModel>
    implements _$$_MacAddressModelCopyWith<$Res> {
  __$$_MacAddressModelCopyWithImpl(
      _$_MacAddressModel _value, $Res Function(_$_MacAddressModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? device = null,
    Object? tenant = null,
  }) {
    return _then(_$_MacAddressModel(
      device: null == device
          ? _value.device
          : device // ignore: cast_nullable_to_non_nullable
              as Device,
      tenant: null == tenant
          ? _value.tenant
          : tenant // ignore: cast_nullable_to_non_nullable
              as Tenant,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MacAddressModel implements _MacAddressModel {
  _$_MacAddressModel(
      {@JsonKey(name: 'device') required this.device,
      @JsonKey(name: 'tenant') required this.tenant});

  factory _$_MacAddressModel.fromJson(Map<String, dynamic> json) =>
      _$$_MacAddressModelFromJson(json);

  @override
  @JsonKey(name: 'device')
  final Device device;
  @override
  @JsonKey(name: 'tenant')
  final Tenant tenant;

  @override
  String toString() {
    return 'MacAddressModel(device: $device, tenant: $tenant)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MacAddressModel &&
            (identical(other.device, device) || other.device == device) &&
            (identical(other.tenant, tenant) || other.tenant == tenant));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, device, tenant);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MacAddressModelCopyWith<_$_MacAddressModel> get copyWith =>
      __$$_MacAddressModelCopyWithImpl<_$_MacAddressModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MacAddressModelToJson(
      this,
    );
  }
}

abstract class _MacAddressModel implements MacAddressModel {
  factory _MacAddressModel(
          {@JsonKey(name: 'device') required final Device device,
          @JsonKey(name: 'tenant') required final Tenant tenant}) =
      _$_MacAddressModel;

  factory _MacAddressModel.fromJson(Map<String, dynamic> json) =
      _$_MacAddressModel.fromJson;

  @override
  @JsonKey(name: 'device')
  Device get device;
  @override
  @JsonKey(name: 'tenant')
  Tenant get tenant;
  @override
  @JsonKey(ignore: true)
  _$$_MacAddressModelCopyWith<_$_MacAddressModel> get copyWith =>
      throw _privateConstructorUsedError;
}

Device _$DeviceFromJson(Map<String, dynamic> json) {
  return _Device.fromJson(json);
}

/// @nodoc
mixin _$Device {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'macId')
  String get macId => throw _privateConstructorUsedError;
  @JsonKey(name: 'orientation')
  String get orientation => throw _privateConstructorUsedError;
  @JsonKey(name: 'location')
  String get location => throw _privateConstructorUsedError;
  @JsonKey(name: 'companyId')
  int get companyId => throw _privateConstructorUsedError;
  @JsonKey(name: 'userId')
  int get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'isActive')
  bool get isActive => throw _privateConstructorUsedError;
  @JsonKey(name: 'dateCreated')
  String get dateCreated => throw _privateConstructorUsedError;
  @JsonKey(name: 'dateUpdated')
  String get dateUpdated => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeviceCopyWith<Device> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceCopyWith<$Res> {
  factory $DeviceCopyWith(Device value, $Res Function(Device) then) =
      _$DeviceCopyWithImpl<$Res, Device>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'macId') String macId,
      @JsonKey(name: 'orientation') String orientation,
      @JsonKey(name: 'location') String location,
      @JsonKey(name: 'companyId') int companyId,
      @JsonKey(name: 'userId') int userId,
      @JsonKey(name: 'isActive') bool isActive,
      @JsonKey(name: 'dateCreated') String dateCreated,
      @JsonKey(name: 'dateUpdated') String dateUpdated});
}

/// @nodoc
class _$DeviceCopyWithImpl<$Res, $Val extends Device>
    implements $DeviceCopyWith<$Res> {
  _$DeviceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? macId = null,
    Object? orientation = null,
    Object? location = null,
    Object? companyId = null,
    Object? userId = null,
    Object? isActive = null,
    Object? dateCreated = null,
    Object? dateUpdated = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      macId: null == macId
          ? _value.macId
          : macId // ignore: cast_nullable_to_non_nullable
              as String,
      orientation: null == orientation
          ? _value.orientation
          : orientation // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      companyId: null == companyId
          ? _value.companyId
          : companyId // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      dateCreated: null == dateCreated
          ? _value.dateCreated
          : dateCreated // ignore: cast_nullable_to_non_nullable
              as String,
      dateUpdated: null == dateUpdated
          ? _value.dateUpdated
          : dateUpdated // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DeviceCopyWith<$Res> implements $DeviceCopyWith<$Res> {
  factory _$$_DeviceCopyWith(_$_Device value, $Res Function(_$_Device) then) =
      __$$_DeviceCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'macId') String macId,
      @JsonKey(name: 'orientation') String orientation,
      @JsonKey(name: 'location') String location,
      @JsonKey(name: 'companyId') int companyId,
      @JsonKey(name: 'userId') int userId,
      @JsonKey(name: 'isActive') bool isActive,
      @JsonKey(name: 'dateCreated') String dateCreated,
      @JsonKey(name: 'dateUpdated') String dateUpdated});
}

/// @nodoc
class __$$_DeviceCopyWithImpl<$Res>
    extends _$DeviceCopyWithImpl<$Res, _$_Device>
    implements _$$_DeviceCopyWith<$Res> {
  __$$_DeviceCopyWithImpl(_$_Device _value, $Res Function(_$_Device) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? macId = null,
    Object? orientation = null,
    Object? location = null,
    Object? companyId = null,
    Object? userId = null,
    Object? isActive = null,
    Object? dateCreated = null,
    Object? dateUpdated = null,
  }) {
    return _then(_$_Device(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      macId: null == macId
          ? _value.macId
          : macId // ignore: cast_nullable_to_non_nullable
              as String,
      orientation: null == orientation
          ? _value.orientation
          : orientation // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      companyId: null == companyId
          ? _value.companyId
          : companyId // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      dateCreated: null == dateCreated
          ? _value.dateCreated
          : dateCreated // ignore: cast_nullable_to_non_nullable
              as String,
      dateUpdated: null == dateUpdated
          ? _value.dateUpdated
          : dateUpdated // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Device implements _Device {
  _$_Device(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'macId') required this.macId,
      @JsonKey(name: 'orientation') required this.orientation,
      @JsonKey(name: 'location') required this.location,
      @JsonKey(name: 'companyId') required this.companyId,
      @JsonKey(name: 'userId') required this.userId,
      @JsonKey(name: 'isActive') required this.isActive,
      @JsonKey(name: 'dateCreated') required this.dateCreated,
      @JsonKey(name: 'dateUpdated') required this.dateUpdated});

  factory _$_Device.fromJson(Map<String, dynamic> json) =>
      _$$_DeviceFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'macId')
  final String macId;
  @override
  @JsonKey(name: 'orientation')
  final String orientation;
  @override
  @JsonKey(name: 'location')
  final String location;
  @override
  @JsonKey(name: 'companyId')
  final int companyId;
  @override
  @JsonKey(name: 'userId')
  final int userId;
  @override
  @JsonKey(name: 'isActive')
  final bool isActive;
  @override
  @JsonKey(name: 'dateCreated')
  final String dateCreated;
  @override
  @JsonKey(name: 'dateUpdated')
  final String dateUpdated;

  @override
  String toString() {
    return 'Device(id: $id, name: $name, macId: $macId, orientation: $orientation, location: $location, companyId: $companyId, userId: $userId, isActive: $isActive, dateCreated: $dateCreated, dateUpdated: $dateUpdated)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Device &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.macId, macId) || other.macId == macId) &&
            (identical(other.orientation, orientation) ||
                other.orientation == orientation) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.companyId, companyId) ||
                other.companyId == companyId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.dateCreated, dateCreated) ||
                other.dateCreated == dateCreated) &&
            (identical(other.dateUpdated, dateUpdated) ||
                other.dateUpdated == dateUpdated));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, macId, orientation,
      location, companyId, userId, isActive, dateCreated, dateUpdated);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeviceCopyWith<_$_Device> get copyWith =>
      __$$_DeviceCopyWithImpl<_$_Device>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DeviceToJson(
      this,
    );
  }
}

abstract class _Device implements Device {
  factory _Device(
          {@JsonKey(name: 'id') required final int id,
          @JsonKey(name: 'name') required final String name,
          @JsonKey(name: 'macId') required final String macId,
          @JsonKey(name: 'orientation') required final String orientation,
          @JsonKey(name: 'location') required final String location,
          @JsonKey(name: 'companyId') required final int companyId,
          @JsonKey(name: 'userId') required final int userId,
          @JsonKey(name: 'isActive') required final bool isActive,
          @JsonKey(name: 'dateCreated') required final String dateCreated,
          @JsonKey(name: 'dateUpdated') required final String dateUpdated}) =
      _$_Device;

  factory _Device.fromJson(Map<String, dynamic> json) = _$_Device.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'macId')
  String get macId;
  @override
  @JsonKey(name: 'orientation')
  String get orientation;
  @override
  @JsonKey(name: 'location')
  String get location;
  @override
  @JsonKey(name: 'companyId')
  int get companyId;
  @override
  @JsonKey(name: 'userId')
  int get userId;
  @override
  @JsonKey(name: 'isActive')
  bool get isActive;
  @override
  @JsonKey(name: 'dateCreated')
  String get dateCreated;
  @override
  @JsonKey(name: 'dateUpdated')
  String get dateUpdated;
  @override
  @JsonKey(ignore: true)
  _$$_DeviceCopyWith<_$_Device> get copyWith =>
      throw _privateConstructorUsedError;
}

Tenant _$TenantFromJson(Map<String, dynamic> json) {
  return _Tenant.fromJson(json);
}

/// @nodoc
mixin _$Tenant {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'address')
  String get address => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone')
  String get phone => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'isActive')
  bool get isActive => throw _privateConstructorUsedError;
  @JsonKey(name: 'dateCreated')
  String get dateCreated => throw _privateConstructorUsedError;
  @JsonKey(name: 'dateUpdated')
  String get dateUpdated => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TenantCopyWith<Tenant> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TenantCopyWith<$Res> {
  factory $TenantCopyWith(Tenant value, $Res Function(Tenant) then) =
      _$TenantCopyWithImpl<$Res, Tenant>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'address') String address,
      @JsonKey(name: 'phone') String phone,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: 'isActive') bool isActive,
      @JsonKey(name: 'dateCreated') String dateCreated,
      @JsonKey(name: 'dateUpdated') String dateUpdated});
}

/// @nodoc
class _$TenantCopyWithImpl<$Res, $Val extends Tenant>
    implements $TenantCopyWith<$Res> {
  _$TenantCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? address = null,
    Object? phone = null,
    Object? description = null,
    Object? isActive = null,
    Object? dateCreated = null,
    Object? dateUpdated = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      dateCreated: null == dateCreated
          ? _value.dateCreated
          : dateCreated // ignore: cast_nullable_to_non_nullable
              as String,
      dateUpdated: null == dateUpdated
          ? _value.dateUpdated
          : dateUpdated // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TenantCopyWith<$Res> implements $TenantCopyWith<$Res> {
  factory _$$_TenantCopyWith(_$_Tenant value, $Res Function(_$_Tenant) then) =
      __$$_TenantCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'address') String address,
      @JsonKey(name: 'phone') String phone,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: 'isActive') bool isActive,
      @JsonKey(name: 'dateCreated') String dateCreated,
      @JsonKey(name: 'dateUpdated') String dateUpdated});
}

/// @nodoc
class __$$_TenantCopyWithImpl<$Res>
    extends _$TenantCopyWithImpl<$Res, _$_Tenant>
    implements _$$_TenantCopyWith<$Res> {
  __$$_TenantCopyWithImpl(_$_Tenant _value, $Res Function(_$_Tenant) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? address = null,
    Object? phone = null,
    Object? description = null,
    Object? isActive = null,
    Object? dateCreated = null,
    Object? dateUpdated = null,
  }) {
    return _then(_$_Tenant(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      dateCreated: null == dateCreated
          ? _value.dateCreated
          : dateCreated // ignore: cast_nullable_to_non_nullable
              as String,
      dateUpdated: null == dateUpdated
          ? _value.dateUpdated
          : dateUpdated // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Tenant implements _Tenant {
  _$_Tenant(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'address') required this.address,
      @JsonKey(name: 'phone') required this.phone,
      @JsonKey(name: 'description') required this.description,
      @JsonKey(name: 'isActive') required this.isActive,
      @JsonKey(name: 'dateCreated') required this.dateCreated,
      @JsonKey(name: 'dateUpdated') required this.dateUpdated});

  factory _$_Tenant.fromJson(Map<String, dynamic> json) =>
      _$$_TenantFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'address')
  final String address;
  @override
  @JsonKey(name: 'phone')
  final String phone;
  @override
  @JsonKey(name: 'description')
  final String description;
  @override
  @JsonKey(name: 'isActive')
  final bool isActive;
  @override
  @JsonKey(name: 'dateCreated')
  final String dateCreated;
  @override
  @JsonKey(name: 'dateUpdated')
  final String dateUpdated;

  @override
  String toString() {
    return 'Tenant(id: $id, name: $name, address: $address, phone: $phone, description: $description, isActive: $isActive, dateCreated: $dateCreated, dateUpdated: $dateUpdated)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Tenant &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.dateCreated, dateCreated) ||
                other.dateCreated == dateCreated) &&
            (identical(other.dateUpdated, dateUpdated) ||
                other.dateUpdated == dateUpdated));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, address, phone,
      description, isActive, dateCreated, dateUpdated);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TenantCopyWith<_$_Tenant> get copyWith =>
      __$$_TenantCopyWithImpl<_$_Tenant>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TenantToJson(
      this,
    );
  }
}

abstract class _Tenant implements Tenant {
  factory _Tenant(
          {@JsonKey(name: 'id') required final int id,
          @JsonKey(name: 'name') required final String name,
          @JsonKey(name: 'address') required final String address,
          @JsonKey(name: 'phone') required final String phone,
          @JsonKey(name: 'description') required final String description,
          @JsonKey(name: 'isActive') required final bool isActive,
          @JsonKey(name: 'dateCreated') required final String dateCreated,
          @JsonKey(name: 'dateUpdated') required final String dateUpdated}) =
      _$_Tenant;

  factory _Tenant.fromJson(Map<String, dynamic> json) = _$_Tenant.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'address')
  String get address;
  @override
  @JsonKey(name: 'phone')
  String get phone;
  @override
  @JsonKey(name: 'description')
  String get description;
  @override
  @JsonKey(name: 'isActive')
  bool get isActive;
  @override
  @JsonKey(name: 'dateCreated')
  String get dateCreated;
  @override
  @JsonKey(name: 'dateUpdated')
  String get dateUpdated;
  @override
  @JsonKey(ignore: true)
  _$$_TenantCopyWith<_$_Tenant> get copyWith =>
      throw _privateConstructorUsedError;
}
