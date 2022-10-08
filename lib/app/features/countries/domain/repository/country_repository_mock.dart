import 'package:best_practice_template/app/features/countries/domain/models/country/country.dart';
import 'package:best_practice_template/app/features/countries/domain/models/country_state/country_state.dart';
import 'package:best_practice_template/app/features/countries/domain/repository/country_repository.dart';
import 'package:best_practice_template/app/network/api_result.dart';
import 'package:injectable/injectable.dart';

@Environment(Environment.dev)
@LazySingleton(as: CountryRepository)
class CountryRepositoryMock implements CountryRepository {
  @override
  Future<ApiResult<List<Country>>> getCountries() {
    return Future.value(const ApiResult.success([
      Country(id: 1, value: 'country1'),
      Country(id: 2, value: 'country2'),
      Country(id: 3, value: 'country3'),
    ]),);
  }

  @override
  Future<ApiResult<List<CountryState>>> getCountryStates(
      {required int countryId,}) {
    return Future.value(const ApiResult.success([
      CountryState(id: 1, value: 'countrystate1'),
      CountryState(id: 2, value: 'countrystate2'),
      CountryState(id: 3, value: 'countrystate3'),
      CountryState(id: 4, value: 'countrystate4'),
    ]),);
  }
}
