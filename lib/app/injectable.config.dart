// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'config.dart' as _i3;
import 'features/countries/cubit/countries_cubit.dart' as _i8;
import 'features/countries/domain/repository/country_repository.dart' as _i4;
import 'features/countries/domain/repository/country_repository_impl.dart'
    as _i9;
import 'features/countries/domain/repository/country_repository_mock.dart'
    as _i5;
import 'network/api.dart' as _i7;
import 'network/dio_client.dart' as _i10;

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
  gh.singleton<_i3.Config>(
    _i3.ConfigDev(),
    registerFor: {_dev},
  );
  gh.singleton<_i3.Config>(
    _i3.ConfigProd(),
    registerFor: {_prod},
  );
  gh.lazySingleton<_i4.CountryRepository>(
    () => _i5.CountryRepositoryMock(),
    registerFor: {_dev},
  );
  gh.factory<_i6.Dio>(() => dioInjectableModule.getDio(get<_i3.Config>()));
  gh.factory<_i7.ApiClient>(() => registerModule.getService(
        get<_i6.Dio>(),
        get<_i3.Config>(),
      ));
  gh.factory<_i8.CountriesCubit>(
      () => _i8.CountriesCubit(get<_i4.CountryRepository>()));
  gh.lazySingleton<_i4.CountryRepository>(
    () => _i9.CountryRepositoryImpl(get<_i7.ApiClient>()),
    registerFor: {_prod},
  );
  return get;
}

class _$DioInjectableModule extends _i10.DioInjectableModule {}

class _$RegisterModule extends _i7.RegisterModule {}
