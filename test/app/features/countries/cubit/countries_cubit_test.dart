// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:best_practice_template/app/features/countries/cubit/countries_cubit.dart';
import 'package:best_practice_template/app/features/countries/cubit/countries_state_data.dart';
import 'package:best_practice_template/app/features/countries/domain/models/country/country.dart';
import 'package:best_practice_template/app/features/countries/domain/models/country_state/country_state.dart';
import 'package:best_practice_template/app/features/countries/domain/repository/country_repository.dart';
import 'package:best_practice_template/app/network/api_result.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockCountryRepository extends Mock with CountryRepository {}

final countryList = [
  const Country(id: 1, value: 'test1'),
  const Country(id: 2, value: 'test2')
];
final countryStateList = [
  const CountryState(id: 1, value: 'test1'),
  const CountryState(id: 2, value: 'test2')
];

void main() {
  group('CountriesCubit', () {
    final countryReposistory = MockCountryRepository();

    setUp(() {
      when(countryReposistory.getCountries).thenAnswer(
          (_) async => Future.value(ApiResult.success(countryList)),);
      when(() => countryReposistory.getCountryStates(
              countryId: any(named: 'countryId'),),)
          .thenAnswer(
              (_) async => Future.value(ApiResult.success(countryStateList)),);
    });

    blocTest<CountriesCubit, CountriesState>(
      'when call loadCountries the state will store countryList',
      build: () => CountriesCubit(countryReposistory),
      wait: const Duration(milliseconds: 10),
      act: (cubit) async => cubit.loadCountries(),
      expect: () => [
        const CountriesState.loading(),
        CountriesState.success(
            CountriesStateData(countries: countryList, countryStates: []),),
      ],
    );
    blocTest<CountriesCubit, CountriesState>(
      'when call loadCountryStates the state will store countryStateList',
      build: () => CountriesCubit(countryReposistory),
      wait: const Duration(milliseconds: 10),
      act: (cubit) async {
        await cubit.loadCountries();
        //because loading country states only available after loadCountries (so the state won't be null)
        await cubit.loadCountryStates(countryId: 123);
      },
      expect: () => [
        const CountriesState.loading(),
        CountriesState.success(
            CountriesStateData(countries: countryList, countryStates: []),),
        const CountriesState.loading(),
        CountriesState.success(CountriesStateData(
            countries: countryList, countryStates: countryStateList,),)
      ],
    );
    blocTest<CountriesCubit, CountriesState>(
      'when call selectCountry the state will store it and fetch countrystates',
      build: () => CountriesCubit(countryReposistory),
      wait: const Duration(milliseconds: 10),
      act: (cubit) async {
        await cubit.loadCountries();
        //because loading country states only available after loadCountries (so the state won't be null)
        await cubit.selectCountry(countryList[0]);
      },
      expect: () => [
        const CountriesState.loading(),
        CountriesState.success(
            CountriesStateData(countries: countryList, countryStates: []),),
        const CountriesState.loading(),
        CountriesState.success(
          CountriesStateData(
              countries: countryList, countryStates: countryStateList,),
        ),
        CountriesState.success(CountriesStateData(
            countries: countryList,
            countryStates: countryStateList,
            selectedCountry: countryList[0],),),
      ],
    );
  });
}
