import 'package:best_practice_template/app/features/countries/cubit/countries_state_data.dart';
import 'package:best_practice_template/app/features/countries/domain/models/country/country.dart';
import 'package:best_practice_template/app/features/countries/domain/models/country_state/country_state.dart';
import 'package:best_practice_template/app/features/countries/domain/repository/country_repository.dart';
import 'package:best_practice_template/extensions/extensions.dart';
import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'countries_state.dart';
part 'countries_cubit.freezed.dart';

@injectable
class CountriesCubit extends Cubit<CountriesState> {
  final CountryRepository countryRepository;

  CountriesCubit(this.countryRepository) : super(CountriesState.initial());

  void loadCountries() async {
    CountriesStateData? currentStateData = state.dataOrNull;
    emit(CountriesState.loading());
    final result = await countryRepository.getCountries();
    result.when(success: (success) {
      currentStateData ??= CountriesStateData(countries: [], countryStates: []);
      emit(CountriesState.success(
          currentStateData!.copyWith(countries: success)));
    }, error: (error) {
      emit(CountriesState.error(error.errorMessage));
    });
  }

  void loadCountryStates({required int countryId}) {}

  void selectCountry(Country country) {
    CountriesStateData? currentStateData = state.dataOrNull;
    emit(CountriesState.success(
        currentStateData!.copyWith(selectedCountry: country)));
  }
}
