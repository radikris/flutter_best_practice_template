import 'package:best_practice_template/app/features/countries/domain/models/country/country.dart';
import 'package:best_practice_template/app/features/countries/domain/models/country_state/country_state.dart';
import 'package:best_practice_template/app/network/api_result.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'api.g.dart';

@RestApi(baseUrl: "https://api.stagingcupid.com/api/v1")
abstract class ApiClient {
  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;

  @GET("/countries")
  Future<ApiResult<List<Country>>> getCountries();

  @GET("/countries/{countryid}/states")
  Future<ApiResult<List<CountryState>>> getCountryStates(
      @Path("countryid") String id);
}
