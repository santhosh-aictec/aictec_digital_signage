

import 'package:freezed_annotation/freezed_annotation.dart';

part 'schedule_list_model.freezed.dart';
part 'schedule_list_model.g.dart';

@freezed
class ScheduleListModel with _$ScheduleListModel {
  const factory ScheduleListModel({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'companyId') required int companyId,
    @JsonKey(name: 'date') required String date,
    @JsonKey(name: 'startTime') required String startTime,
    @JsonKey(name: 'endTime') required String endTime,

    @JsonKey(name: 'contentId') required int contentId,

    @JsonKey(name: 'isActive') required bool isActive,
    @JsonKey(name: 'dateCreated') required String dateCreated,
    @JsonKey(name: 'dateUpdated') required String dateUpdated,
    @JsonKey(name: 'content') required Content content,
  }) = _ScheduleListModel;

  factory ScheduleListModel.fromJson(Map<String, dynamic> json) =>
      _$ScheduleListModelFromJson(json);
}

// @freezed
// class CompanyDetails with _$CompanyDetails {
//   factory CompanyDetails({
//
//     @JsonKey(name: 'id') required int id,
//     @JsonKey(name: 'companyId') required int companyId,
//     @JsonKey(name: 'date') required String date,
//     @JsonKey(name: 'startTime') required String startTime,
//     @JsonKey(name: 'endTime') required String endTime,
//
//     @JsonKey(name: 'contentId') required int contentId,
//
//     @JsonKey(name: 'isActive') required bool isActive,
//     @JsonKey(name: 'dateCreated') required String dateCreated,
//     @JsonKey(name: 'dateUpdated') required String dateUpdated,
//     @JsonKey(name: 'content') required Content content,
//
//   }) = _CompanyDetails;
//
//   factory CompanyDetails.fromJson(Map<String, dynamic> json) =>
//       _$CompanyDetailsFromJson(json);
// }

@freezed
class Content with _$Content {
  factory Content({

    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'fileName') required String fileName,
    @JsonKey(name: 'filePath') required String filePath,
    @JsonKey(name: 'companyId') required int companyId,

    @JsonKey(name: 'isActive') required bool isActive,
    @JsonKey(name: 'dateCreated') required String dateCreated,
    @JsonKey(name: 'dateUpdated') required String dateUpdated,

  }) = _Content;

  factory Content.fromJson(Map<String, dynamic> json) =>
      _$ContentFromJson(json);
}


//[
//     {
//         "id": 12,
//         "companyId": 2,
//         "date": "2023-09-23",
//         "startTime": "03:00:00",
//         "endTime": "16:00:00",

//         "contentId": 2,
//         "isActive": true,
//         "dateCreated": "2023-10-03T05:59:01.215Z",
//         "dateUpdated": "2023-10-03T05:59:01.215Z",
//         "content": {
//             "id": 2,
//             "fileName": "dfgfs",
//             "filePath": "https://www.youtube.com/watch?v=FiBL5k5eCqw",
//             "companyId": 2,
//             "isActive": true,
//             "dateCreated": "2023-09-20T09:38:34.136Z",
//             "dateUpdated": "2023-09-20T09:38:34.136Z"
//         }
//     },
//     {
//         "id": 13,
//         "companyId": 2,
//         "date": "2023-09-23",
//         "startTime": "03:00:00",
//         "endTime": "16:00:00",
//         "contentId": 6,
//         "isActive": true,
//         "dateCreated": "2023-10-03T06:03:49.871Z",
//         "dateUpdated": "2023-10-03T06:03:49.871Z",
//         "content": {
//             "id": 6,
//             "fileName": "BigBuckBunny",
//             "filePath": "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4",
//             "companyId": 2,
//             "isActive": true,
//             "dateCreated": "2023-10-03T06:03:15.096Z",
//             "dateUpdated": "2023-10-03T06:03:15.096Z"
//         }
//     }
// ]