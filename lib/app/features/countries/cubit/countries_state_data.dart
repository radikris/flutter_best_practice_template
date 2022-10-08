import 'package:best_practice_template/app/features/countries/domain/models/country/country.dart';
import 'package:best_practice_template/app/features/countries/domain/models/country_state/country_state.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'countries_state_data.freezed.dart';

@freezed
class CountriesStateData with _$CountriesStateData {
  const factory CountriesStateData({
    required List<Country> countries,
    required List<CountryState> countryStates,
    CountryState? selectedCountryState,
    Country? selectedCountry,
  }) = _CountriesStateData;
}
