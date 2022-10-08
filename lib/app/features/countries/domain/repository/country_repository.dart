import 'package:best_practice_template/app/features/countries/domain/models/country/country.dart';
import 'package:best_practice_template/app/features/countries/domain/models/country_state/country_state.dart';
import 'package:best_practice_template/app/network/api_result.dart';

abstract class CountryRepository {
  Future<ApiResult<List<Country>>> getCountries();
  Future<ApiResult<List<CountryState>>> getCountryStates(
      {required int countryId,});
}
