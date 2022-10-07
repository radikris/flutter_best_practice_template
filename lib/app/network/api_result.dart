import 'package:best_practice_template/app/network/api_error.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'api_result.freezed.dart';
part 'api_result.g.dart';

@Freezed(genericArgumentFactories: true)
class ApiResult<T> with _$ApiResult<T> {
  const factory ApiResult.data(T data) = ApiResultData;
  const factory ApiResult.error(String error) = ApiResultError;

  factory ApiResult.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$ApiResultFromJson(json, fromJsonT);
}
