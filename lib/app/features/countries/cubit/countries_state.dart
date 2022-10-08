part of 'countries_cubit.dart';

@freezed
abstract class CountriesState with _$CountriesState {
  const factory CountriesState.initial() = _Initial;
  const factory CountriesState.loading() = _Loading;
  const factory CountriesState.error(String message) = _Error;
  const factory CountriesState.success(CountriesStateData data) = _Success;

  const CountriesState._();

  CountriesStateData? get dataOrNull =>
      this.maybeWhen(success: (data) => data, orElse: () => null);
}
