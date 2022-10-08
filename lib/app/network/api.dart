import 'package:best_practice_template/app/config.dart';
import 'package:best_practice_template/app/features/countries/domain/models/country/country.dart';
import 'package:best_practice_template/app/features/countries/domain/models/country_state/country_state.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart' hide Headers;

part 'api.g.dart';

@RestApi(baseUrl: 'https://api.stagingcupid.com/api/v1')
abstract class ApiClient {
  factory ApiClient(Dio dio, {String? baseUrl}) = _ApiClient;

  @GET('/countries')
  Future<List<Country>> getCountries();

  @GET('/countries/{countryid}/states')
  Future<List<CountryState>> getCountryStates(@Path('countryid') int id);
}

@module
abstract class RegisterModule {
/*   ApiClient getService(Dio dio, @factoryParam String url) =>
      ApiClient(dio, baseUrl: url); */
  ApiClient getService(Dio dio, Config config) =>
      ApiClient(dio, baseUrl: config.baseUrl);
}
