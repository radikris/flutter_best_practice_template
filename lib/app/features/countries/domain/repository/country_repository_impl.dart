import 'package:best_practice_template/app/features/countries/domain/models/country/country.dart';
import 'package:best_practice_template/app/features/countries/domain/models/country_state/country_state.dart';
import 'package:best_practice_template/app/features/countries/domain/repository/country_repository.dart';
import 'package:best_practice_template/app/network/api.dart';
import 'package:best_practice_template/app/network/api_error.dart';
import 'package:best_practice_template/app/network/api_result.dart';
import 'package:injectable/injectable.dart';

@Environment(Environment.prod)
@LazySingleton(as: CountryRepository)
class CountryRepositoryImpl implements CountryRepository {
  CountryRepositoryImpl(this._api);

  final ApiClient _api;

  @override
  Future<ApiResult<List<Country>>> getCountries() async {
    try {
      final result = await _api.getCountries();

      return ApiResult.success(result);
    } catch (error) {
      return ApiResult.error(ApiError.fromDioException(error));
    }
  }

  @override
  Future<ApiResult<List<CountryState>>> getCountryStates({
    required int countryId,
  }) async {
    try {
      final result = await _api.getCountryStates(countryId);

      return ApiResult.success(result);
    } catch (error) {
      return ApiResult.error(ApiError.fromDioException(error));
    }
  }
}
