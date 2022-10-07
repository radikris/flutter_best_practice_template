// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ApiResultData<T> _$$ApiResultDataFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    _$ApiResultData<T>(
      fromJsonT(json['data']),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ApiResultDataToJson<T>(
  _$ApiResultData<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'data': toJsonT(instance.data),
      'runtimeType': instance.$type,
    };

_$ApiResultError<T> _$$ApiResultErrorFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    _$ApiResultError<T>(
      json['error'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ApiResultErrorToJson<T>(
  _$ApiResultError<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'error': instance.error,
      'runtimeType': instance.$type,
    };
