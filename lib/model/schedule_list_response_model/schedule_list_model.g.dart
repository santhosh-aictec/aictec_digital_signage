// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedule_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ScheduleListModel _$$_ScheduleListModelFromJson(Map<String, dynamic> json) =>
    _$_ScheduleListModel(
      id: json['id'] as int,
      companyId: json['companyId'] as int,
      date: json['date'] as String,
      startTime: json['startTime'] as String,
      endTime: json['endTime'] as String,
      contentId: json['contentId'] as int,
      isActive: json['isActive'] as bool,
      dateCreated: json['dateCreated'] as String,
      dateUpdated: json['dateUpdated'] as String,
      content: Content.fromJson(json['content'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ScheduleListModelToJson(
        _$_ScheduleListModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'companyId': instance.companyId,
      'date': instance.date,
      'startTime': instance.startTime,
      'endTime': instance.endTime,
      'contentId': instance.contentId,
      'isActive': instance.isActive,
      'dateCreated': instance.dateCreated,
      'dateUpdated': instance.dateUpdated,
      'content': instance.content,
    };

_$_Content _$$_ContentFromJson(Map<String, dynamic> json) => _$_Content(
      id: json['id'] as int,
      fileName: json['fileName'] as String,
      filePath: json['filePath'] as String,
      companyId: json['companyId'] as int,
      isActive: json['isActive'] as bool,
      dateCreated: json['dateCreated'] as String,
      dateUpdated: json['dateUpdated'] as String,
    );

Map<String, dynamic> _$$_ContentToJson(_$_Content instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fileName': instance.fileName,
      'filePath': instance.filePath,
      'companyId': instance.companyId,
      'isActive': instance.isActive,
      'dateCreated': instance.dateCreated,
      'dateUpdated': instance.dateUpdated,
    };
