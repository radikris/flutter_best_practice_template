// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'package:best_practice_template/app/features/countries/cubit/countries_cubit.dart' as _i7;
import 'package:best_practice_template/app/features/countries/domain/repository/country_repository.dart' as _i3;
import 'package:best_practice_template/app/features/countries/domain/repository/country_repository_impl.dart'
    as _i8;
import 'package:best_practice_template/app/features/countries/domain/repository/country_repository_mock.dart'
    as _i4;
import 'package:best_practice_template/app/network/api.dart' as _i6;
import 'package:best_practice_template/app/network/dio_client.dart' as _i9;

const String _dev = 'dev';
const String _prod = 'prod';
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  final dioInjectableModule = _$DioInjectableModule();
  final registerModule = _$RegisterModule();
  gh.lazySingleton<_i3.CountryRepository>(
    () => _i4.CountryRepositoryMock(),
    registerFor: {_dev},
  );
  gh.factory<_i5.Dio>(() => dioInjectableModule.dio);
  gh.factory<_i6.ApiClient>(() => registerModule.getService(get<_i5.Dio>()));
  gh.factory<_i7.CountriesCubit>(
      () => _i7.CountriesCubit(get<_i3.CountryRepository>()),);
  gh.lazySingleton<_i3.CountryRepository>(
    () => _i8.CountryRepositoryImpl(get<_i6.ApiClient>()),
    registerFor: {_prod},
  );
  return get;
}

class _$DioInjectableModule extends _i9.DioInjectableModule {}

class _$RegisterModule extends _i6.RegisterModule {}
