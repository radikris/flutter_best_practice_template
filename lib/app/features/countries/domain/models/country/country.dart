import 'package:freezed_annotation/freezed_annotation.dart';

part 'country.freezed.dart';
part 'country.g.dart';

@freezed
class Country with _$Country {
  const factory Country({
    required int id,
    required String value,
  }) = _Country;

  factory Country.fromJson(Map<String, Object?> json) =>
      _$CountryFromJson(json);
}
