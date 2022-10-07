import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'country_state.freezed.dart';
part 'country_state.g.dart';

@freezed
class CountryState with _$CountryState {
  const factory CountryState({
    required String id,
    required String value,
  }) = _CountryState;

  factory CountryState.fromJson(Map<String, Object?> json) =>
      _$CountryStateFromJson(json);
}
