// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'schedule_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ScheduleListModel _$ScheduleListModelFromJson(Map<String, dynamic> json) {
  return _ScheduleListModel.fromJson(json);
}

/// @nodoc
mixin _$ScheduleListModel {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'companyId')
  int get companyId => throw _privateConstructorUsedError;
  @JsonKey(name: 'date')
  String get date => throw _privateConstructorUsedError;
  @JsonKey(name: 'startTime')
  String get startTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'endTime')
  String get endTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'contentId')
  int get contentId => throw _privateConstructorUsedError;
  @JsonKey(name: 'isActive')
  bool get isActive => throw _privateConstructorUsedError;
  @JsonKey(name: 'dateCreated')
  String get dateCreated => throw _privateConstructorUsedError;
  @JsonKey(name: 'dateUpdated')
  String get dateUpdated => throw _privateConstructorUsedError;
  @JsonKey(name: 'content')
  Content get content => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ScheduleListModelCopyWith<ScheduleListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleListModelCopyWith<$Res> {
  factory $ScheduleListModelCopyWith(
          ScheduleListModel value, $Res Function(ScheduleListModel) then) =
      _$ScheduleListModelCopyWithImpl<$Res, ScheduleListModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'companyId') int companyId,
      @JsonKey(name: 'date') String date,
      @JsonKey(name: 'startTime') String startTime,
      @JsonKey(name: 'endTime') String endTime,
      @JsonKey(name: 'contentId') int contentId,
      @JsonKey(name: 'isActive') bool isActive,
      @JsonKey(name: 'dateCreated') String dateCreated,
      @JsonKey(name: 'dateUpdated') String dateUpdated,
      @JsonKey(name: 'content') Content content});

  $ContentCopyWith<$Res> get content;
}

/// @nodoc
class _$ScheduleListModelCopyWithImpl<$Res, $Val extends ScheduleListModel>
    implements $ScheduleListModelCopyWith<$Res> {
  _$ScheduleListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? companyId = null,
    Object? date = null,
    Object? startTime = null,
    Object? endTime = null,
    Object? contentId = null,
    Object? isActive = null,
    Object? dateCreated = null,
    Object? dateUpdated = null,
    Object? content = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      companyId: null == companyId
          ? _value.companyId
          : companyId // ignore: cast_nullable_to_non_nullable
              as int,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String,
      contentId: null == contentId
          ? _value.contentId
          : contentId // ignore: cast_nullable_to_non_nullable
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
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as Content,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ContentCopyWith<$Res> get content {
    return $ContentCopyWith<$Res>(_value.content, (value) {
      return _then(_value.copyWith(content: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ScheduleListModelCopyWith<$Res>
    implements $ScheduleListModelCopyWith<$Res> {
  factory _$$_ScheduleListModelCopyWith(_$_ScheduleListModel value,
          $Res Function(_$_ScheduleListModel) then) =
      __$$_ScheduleListModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'companyId') int companyId,
      @JsonKey(name: 'date') String date,
      @JsonKey(name: 'startTime') String startTime,
      @JsonKey(name: 'endTime') String endTime,
      @JsonKey(name: 'contentId') int contentId,
      @JsonKey(name: 'isActive') bool isActive,
      @JsonKey(name: 'dateCreated') String dateCreated,
      @JsonKey(name: 'dateUpdated') String dateUpdated,
      @JsonKey(name: 'content') Content content});

  @override
  $ContentCopyWith<$Res> get content;
}

/// @nodoc
class __$$_ScheduleListModelCopyWithImpl<$Res>
    extends _$ScheduleListModelCopyWithImpl<$Res, _$_ScheduleListModel>
    implements _$$_ScheduleListModelCopyWith<$Res> {
  __$$_ScheduleListModelCopyWithImpl(
      _$_ScheduleListModel _value, $Res Function(_$_ScheduleListModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? companyId = null,
    Object? date = null,
    Object? startTime = null,
    Object? endTime = null,
    Object? contentId = null,
    Object? isActive = null,
    Object? dateCreated = null,
    Object? dateUpdated = null,
    Object? content = null,
  }) {
    return _then(_$_ScheduleListModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      companyId: null == companyId
          ? _value.companyId
          : companyId // ignore: cast_nullable_to_non_nullable
              as int,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String,
      contentId: null == contentId
          ? _value.contentId
          : contentId // ignore: cast_nullable_to_non_nullable
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
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as Content,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ScheduleListModel implements _ScheduleListModel {
  const _$_ScheduleListModel(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'companyId') required this.companyId,
      @JsonKey(name: 'date') required this.date,
      @JsonKey(name: 'startTime') required this.startTime,
      @JsonKey(name: 'endTime') required this.endTime,
      @JsonKey(name: 'contentId') required this.contentId,
      @JsonKey(name: 'isActive') required this.isActive,
      @JsonKey(name: 'dateCreated') required this.dateCreated,
      @JsonKey(name: 'dateUpdated') required this.dateUpdated,
      @JsonKey(name: 'content') required this.content});

  factory _$_ScheduleListModel.fromJson(Map<String, dynamic> json) =>
      _$$_ScheduleListModelFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'companyId')
  final int companyId;
  @override
  @JsonKey(name: 'date')
  final String date;
  @override
  @JsonKey(name: 'startTime')
  final String startTime;
  @override
  @JsonKey(name: 'endTime')
  final String endTime;
  @override
  @JsonKey(name: 'contentId')
  final int contentId;
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
  @JsonKey(name: 'content')
  final Content content;

  @override
  String toString() {
    return 'ScheduleListModel(id: $id, companyId: $companyId, date: $date, startTime: $startTime, endTime: $endTime, contentId: $contentId, isActive: $isActive, dateCreated: $dateCreated, dateUpdated: $dateUpdated, content: $content)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ScheduleListModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.companyId, companyId) ||
                other.companyId == companyId) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.contentId, contentId) ||
                other.contentId == contentId) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.dateCreated, dateCreated) ||
                other.dateCreated == dateCreated) &&
            (identical(other.dateUpdated, dateUpdated) ||
                other.dateUpdated == dateUpdated) &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, companyId, date, startTime,
      endTime, contentId, isActive, dateCreated, dateUpdated, content);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ScheduleListModelCopyWith<_$_ScheduleListModel> get copyWith =>
      __$$_ScheduleListModelCopyWithImpl<_$_ScheduleListModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ScheduleListModelToJson(
      this,
    );
  }
}

abstract class _ScheduleListModel implements ScheduleListModel {
  const factory _ScheduleListModel(
          {@JsonKey(name: 'id') required final int id,
          @JsonKey(name: 'companyId') required final int companyId,
          @JsonKey(name: 'date') required final String date,
          @JsonKey(name: 'startTime') required final String startTime,
          @JsonKey(name: 'endTime') required final String endTime,
          @JsonKey(name: 'contentId') required final int contentId,
          @JsonKey(name: 'isActive') required final bool isActive,
          @JsonKey(name: 'dateCreated') required final String dateCreated,
          @JsonKey(name: 'dateUpdated') required final String dateUpdated,
          @JsonKey(name: 'content') required final Content content}) =
      _$_ScheduleListModel;

  factory _ScheduleListModel.fromJson(Map<String, dynamic> json) =
      _$_ScheduleListModel.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'companyId')
  int get companyId;
  @override
  @JsonKey(name: 'date')
  String get date;
  @override
  @JsonKey(name: 'startTime')
  String get startTime;
  @override
  @JsonKey(name: 'endTime')
  String get endTime;
  @override
  @JsonKey(name: 'contentId')
  int get contentId;
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
  @JsonKey(name: 'content')
  Content get content;
  @override
  @JsonKey(ignore: true)
  _$$_ScheduleListModelCopyWith<_$_ScheduleListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

Content _$ContentFromJson(Map<String, dynamic> json) {
  return _Content.fromJson(json);
}

/// @nodoc
mixin _$Content {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'fileName')
  String get fileName => throw _privateConstructorUsedError;
  @JsonKey(name: 'filePath')
  String get filePath => throw _privateConstructorUsedError;
  @JsonKey(name: 'companyId')
  int get companyId => throw _privateConstructorUsedError;
  @JsonKey(name: 'isActive')
  bool get isActive => throw _privateConstructorUsedError;
  @JsonKey(name: 'dateCreated')
  String get dateCreated => throw _privateConstructorUsedError;
  @JsonKey(name: 'dateUpdated')
  String get dateUpdated => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContentCopyWith<Content> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContentCopyWith<$Res> {
  factory $ContentCopyWith(Content value, $Res Function(Content) then) =
      _$ContentCopyWithImpl<$Res, Content>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'fileName') String fileName,
      @JsonKey(name: 'filePath') String filePath,
      @JsonKey(name: 'companyId') int companyId,
      @JsonKey(name: 'isActive') bool isActive,
      @JsonKey(name: 'dateCreated') String dateCreated,
      @JsonKey(name: 'dateUpdated') String dateUpdated});
}

/// @nodoc
class _$ContentCopyWithImpl<$Res, $Val extends Content>
    implements $ContentCopyWith<$Res> {
  _$ContentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? fileName = null,
    Object? filePath = null,
    Object? companyId = null,
    Object? isActive = null,
    Object? dateCreated = null,
    Object? dateUpdated = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      fileName: null == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String,
      filePath: null == filePath
          ? _value.filePath
          : filePath // ignore: cast_nullable_to_non_nullable
              as String,
      companyId: null == companyId
          ? _value.companyId
          : companyId // ignore: cast_nullable_to_non_nullable
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
abstract class _$$_ContentCopyWith<$Res> implements $ContentCopyWith<$Res> {
  factory _$$_ContentCopyWith(
          _$_Content value, $Res Function(_$_Content) then) =
      __$$_ContentCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'fileName') String fileName,
      @JsonKey(name: 'filePath') String filePath,
      @JsonKey(name: 'companyId') int companyId,
      @JsonKey(name: 'isActive') bool isActive,
      @JsonKey(name: 'dateCreated') String dateCreated,
      @JsonKey(name: 'dateUpdated') String dateUpdated});
}

/// @nodoc
class __$$_ContentCopyWithImpl<$Res>
    extends _$ContentCopyWithImpl<$Res, _$_Content>
    implements _$$_ContentCopyWith<$Res> {
  __$$_ContentCopyWithImpl(_$_Content _value, $Res Function(_$_Content) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? fileName = null,
    Object? filePath = null,
    Object? companyId = null,
    Object? isActive = null,
    Object? dateCreated = null,
    Object? dateUpdated = null,
  }) {
    return _then(_$_Content(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      fileName: null == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String,
      filePath: null == filePath
          ? _value.filePath
          : filePath // ignore: cast_nullable_to_non_nullable
              as String,
      companyId: null == companyId
          ? _value.companyId
          : companyId // ignore: cast_nullable_to_non_nullable
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
class _$_Content implements _Content {
  _$_Content(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'fileName') required this.fileName,
      @JsonKey(name: 'filePath') required this.filePath,
      @JsonKey(name: 'companyId') required this.companyId,
      @JsonKey(name: 'isActive') required this.isActive,
      @JsonKey(name: 'dateCreated') required this.dateCreated,
      @JsonKey(name: 'dateUpdated') required this.dateUpdated});

  factory _$_Content.fromJson(Map<String, dynamic> json) =>
      _$$_ContentFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'fileName')
  final String fileName;
  @override
  @JsonKey(name: 'filePath')
  final String filePath;
  @override
  @JsonKey(name: 'companyId')
  final int companyId;
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
    return 'Content(id: $id, fileName: $fileName, filePath: $filePath, companyId: $companyId, isActive: $isActive, dateCreated: $dateCreated, dateUpdated: $dateUpdated)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Content &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.fileName, fileName) ||
                other.fileName == fileName) &&
            (identical(other.filePath, filePath) ||
                other.filePath == filePath) &&
            (identical(other.companyId, companyId) ||
                other.companyId == companyId) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.dateCreated, dateCreated) ||
                other.dateCreated == dateCreated) &&
            (identical(other.dateUpdated, dateUpdated) ||
                other.dateUpdated == dateUpdated));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, fileName, filePath,
      companyId, isActive, dateCreated, dateUpdated);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ContentCopyWith<_$_Content> get copyWith =>
      __$$_ContentCopyWithImpl<_$_Content>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ContentToJson(
      this,
    );
  }
}

abstract class _Content implements Content {
  factory _Content(
          {@JsonKey(name: 'id') required final int id,
          @JsonKey(name: 'fileName') required final String fileName,
          @JsonKey(name: 'filePath') required final String filePath,
          @JsonKey(name: 'companyId') required final int companyId,
          @JsonKey(name: 'isActive') required final bool isActive,
          @JsonKey(name: 'dateCreated') required final String dateCreated,
          @JsonKey(name: 'dateUpdated') required final String dateUpdated}) =
      _$_Content;

  factory _Content.fromJson(Map<String, dynamic> json) = _$_Content.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'fileName')
  String get fileName;
  @override
  @JsonKey(name: 'filePath')
  String get filePath;
  @override
  @JsonKey(name: 'companyId')
  int get companyId;
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
  _$$_ContentCopyWith<_$_Content> get copyWith =>
      throw _privateConstructorUsedError;
}
