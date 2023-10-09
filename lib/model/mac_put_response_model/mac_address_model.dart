
import 'package:freezed_annotation/freezed_annotation.dart';

part 'mac_address_model.freezed.dart';
part 'mac_address_model.g.dart';

@freezed
class MacAddressModel with _$MacAddressModel {
  factory MacAddressModel({
    @JsonKey(name: 'device') required Device device,
    @JsonKey(name: 'tenant') required Tenant tenant,
  }) = _MacAddressModel;

  factory MacAddressModel.fromJson(Map<String, dynamic> json) =>
      _$MacAddressModelFromJson(json);
}


@freezed
class Device with _$Device {
  factory Device({

    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'macId') required String macId,
    @JsonKey(name: 'orientation') required String orientation,
    @JsonKey(name: 'location') required String location,
    @JsonKey(name: 'companyId') required int companyId,
    @JsonKey(name: 'userId') required int userId,
    @JsonKey(name: 'isActive') required bool isActive,
    @JsonKey(name: 'dateCreated') required String dateCreated,
    @JsonKey(name: 'dateUpdated') required String dateUpdated,

  }) = _Device;

  factory Device.fromJson(Map<String, dynamic> json) =>
      _$DeviceFromJson(json);
}

@freezed
class Tenant with _$Tenant {
  factory Tenant({

    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'address') required String address,
    @JsonKey(name: 'phone') required String phone,
    @JsonKey(name: 'description') required String description,
    @JsonKey(name: 'isActive') required bool isActive,
    @JsonKey(name: 'dateCreated') required String dateCreated,
    @JsonKey(name: 'dateUpdated') required String dateUpdated,

  }) = _Tenant;

  factory Tenant.fromJson(Map<String, dynamic> json) =>
      _$TenantFromJson(json);
}





//{
//     "device": {
//         "id": 1,
//         "name": "Vivo Tab",
//         "macId": "1234567",
//         "orientation": "Text gsdgfdg",
//         "location": "Coimbutor gfds",
//         "companyId": 2,
//         "userId": 0,
//         "isActive": true,
//         "dateCreated": "2023-09-20T09:56:24.701Z",
//         "dateUpdated": "2023-10-03T04:44:00.000Z"
//     },
//     "tenant": {
//         "id": 2,
//         "name": "AICTEC Company",
//         "address": "Text 1",
//         "phone": "9876543210",
//         "description": "Text 1",
//         "isActive": true,
//         "dateCreated": "2023-09-20T08:51:19.269Z",
//         "dateUpdated": "2023-09-20T08:52:08.000Z"
//     }
// }


