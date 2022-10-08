import 'package:best_practice_template/app/features/countries/cubit/countries_state_data.dart';
import 'package:best_practice_template/app/features/countries/domain/models/country/country.dart';
import 'package:best_practice_template/app/features/countries/domain/models/country_state/country_state.dart';
import 'package:best_practice_template/app/features/countries/domain/repository/country_repository.dart';
import 'package:best_practice_template/extensions/extensions.dart';
import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'countries_state.dart';
part 'countries_cubit.freezed.dart';

@injectable
class CountriesCubit extends Cubit<CountriesState> {
  CountriesCubit(this.countryRepository)
      : super(const CountriesState.initial());
  final CountryRepository countryRepository;

  Future<void> loadCountries() async {
    var currentStateData = state.dataOrNull;
    emit(const CountriesState.loading());
    final result = await countryRepository.getCountries();
    result.when(
      success: (success) {
        currentStateData ??= const CountriesStateData(
          countries: [],
          countryStates: [],
        );
        emit(
          CountriesState.success(
            currentStateData!.copyWith(countries: success),
          ),
        );
      },
      error: (error) {
        emit(CountriesState.error(error.errorMessage));
      },
    );
  }

  Future<void> loadCountryStates({required int countryId}) async {
    final currentStateData = state.dataOrNull;

    emit(const CountriesState.loading());
    final result =
        await countryRepository.getCountryStates(countryId: countryId);
    result.when(
      success: (success) {
        emit(
          CountriesState.success(
            currentStateData!.copyWith(countryStates: success),
          ),
        );
      },
      error: (error) {
        emit(CountriesState.error(error.errorMessage));
      },
    );
  }

  Future<void> selectCountry(Country country) async {
    await loadCountryStates(countryId: country.id);
    final currentStateData = state.dataOrNull;
    //can't be null, because this method only avaiable after successfull fetch
    emit(
      CountriesState.success(
        currentStateData!
            .copyWith(selectedCountry: country, selectedCountryState: null),
      ),
    );
  }

  void selectCountryState(CountryState countryState) {
    final currentStateData = state.dataOrNull;
    emit(
      CountriesState.success(
        currentStateData!.copyWith(selectedCountryState: countryState),
      ),
    );
  }
}
