import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'country.freezed.dart';
part 'country.g.dart';

@freezed
class Country with _$Country {
  const factory Country({
    required String id,
    required String value,
  }) = _Country;

  factory Country.fromJson(Map<String, Object?> json) =>
      _$CountryFromJson(json);
}