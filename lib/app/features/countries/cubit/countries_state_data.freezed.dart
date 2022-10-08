// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'countries_state_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CountriesStateData {
  List<Country> get countries => throw _privateConstructorUsedError;
  List<CountryState> get countryStates => throw _privateConstructorUsedError;
  CountryState? get selectedCountryState => throw _privateConstructorUsedError;
  Country? get selectedCountry => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CountriesStateDataCopyWith<CountriesStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountriesStateDataCopyWith<$Res> {
  factory $CountriesStateDataCopyWith(
          CountriesStateData value, $Res Function(CountriesStateData) then) =
      _$CountriesStateDataCopyWithImpl<$Res>;
  $Res call(
      {List<Country> countries,
      List<CountryState> countryStates,
      CountryState? selectedCountryState,
      Country? selectedCountry});

  $CountryStateCopyWith<$Res>? get selectedCountryState;
  $CountryCopyWith<$Res>? get selectedCountry;
}

/// @nodoc
class _$CountriesStateDataCopyWithImpl<$Res>
    implements $CountriesStateDataCopyWith<$Res> {
  _$CountriesStateDataCopyWithImpl(this._value, this._then);

  final CountriesStateData _value;
  // ignore: unused_field
  final $Res Function(CountriesStateData) _then;

  @override
  $Res call({
    Object? countries = freezed,
    Object? countryStates = freezed,
    Object? selectedCountryState = freezed,
    Object? selectedCountry = freezed,
  }) {
    return _then(_value.copyWith(
      countries: countries == freezed
          ? _value.countries
          : countries // ignore: cast_nullable_to_non_nullable
              as List<Country>,
      countryStates: countryStates == freezed
          ? _value.countryStates
          : countryStates // ignore: cast_nullable_to_non_nullable
              as List<CountryState>,
      selectedCountryState: selectedCountryState == freezed
          ? _value.selectedCountryState
          : selectedCountryState // ignore: cast_nullable_to_non_nullable
              as CountryState?,
      selectedCountry: selectedCountry == freezed
          ? _value.selectedCountry
          : selectedCountry // ignore: cast_nullable_to_non_nullable
              as Country?,
    ));
  }

  @override
  $CountryStateCopyWith<$Res>? get selectedCountryState {
    if (_value.selectedCountryState == null) {
      return null;
    }

    return $CountryStateCopyWith<$Res>(_value.selectedCountryState!, (value) {
      return _then(_value.copyWith(selectedCountryState: value));
    });
  }

  @override
  $CountryCopyWith<$Res>? get selectedCountry {
    if (_value.selectedCountry == null) {
      return null;
    }

    return $CountryCopyWith<$Res>(_value.selectedCountry!, (value) {
      return _then(_value.copyWith(selectedCountry: value));
    });
  }
}

/// @nodoc
abstract class _$$_CountriesStateDataCopyWith<$Res>
    implements $CountriesStateDataCopyWith<$Res> {
  factory _$$_CountriesStateDataCopyWith(_$_CountriesStateData value,
          $Res Function(_$_CountriesStateData) then) =
      __$$_CountriesStateDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<Country> countries,
      List<CountryState> countryStates,
      CountryState? selectedCountryState,
      Country? selectedCountry});

  @override
  $CountryStateCopyWith<$Res>? get selectedCountryState;
  @override
  $CountryCopyWith<$Res>? get selectedCountry;
}

/// @nodoc
class __$$_CountriesStateDataCopyWithImpl<$Res>
    extends _$CountriesStateDataCopyWithImpl<$Res>
    implements _$$_CountriesStateDataCopyWith<$Res> {
  __$$_CountriesStateDataCopyWithImpl(
      _$_CountriesStateData _value, $Res Function(_$_CountriesStateData) _then)
      : super(_value, (v) => _then(v as _$_CountriesStateData));

  @override
  _$_CountriesStateData get _value => super._value as _$_CountriesStateData;

  @override
  $Res call({
    Object? countries = freezed,
    Object? countryStates = freezed,
    Object? selectedCountryState = freezed,
    Object? selectedCountry = freezed,
  }) {
    return _then(_$_CountriesStateData(
      countries: countries == freezed
          ? _value._countries
          : countries // ignore: cast_nullable_to_non_nullable
              as List<Country>,
      countryStates: countryStates == freezed
          ? _value._countryStates
          : countryStates // ignore: cast_nullable_to_non_nullable
              as List<CountryState>,
      selectedCountryState: selectedCountryState == freezed
          ? _value.selectedCountryState
          : selectedCountryState // ignore: cast_nullable_to_non_nullable
              as CountryState?,
      selectedCountry: selectedCountry == freezed
          ? _value.selectedCountry
          : selectedCountry // ignore: cast_nullable_to_non_nullable
              as Country?,
    ));
  }
}

/// @nodoc

class _$_CountriesStateData implements _CountriesStateData {
  const _$_CountriesStateData(
      {required final List<Country> countries,
      required final List<CountryState> countryStates,
      this.selectedCountryState,
      this.selectedCountry})
      : _countries = countries,
        _countryStates = countryStates;

  final List<Country> _countries;
  @override
  List<Country> get countries {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_countries);
  }

  final List<CountryState> _countryStates;
  @override
  List<CountryState> get countryStates {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_countryStates);
  }

  @override
  final CountryState? selectedCountryState;
  @override
  final Country? selectedCountry;

  @override
  String toString() {
    return 'CountriesStateData(countries: $countries, countryStates: $countryStates, selectedCountryState: $selectedCountryState, selectedCountry: $selectedCountry)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CountriesStateData &&
            const DeepCollectionEquality()
                .equals(other._countries, _countries) &&
            const DeepCollectionEquality()
                .equals(other._countryStates, _countryStates) &&
            const DeepCollectionEquality()
                .equals(other.selectedCountryState, selectedCountryState) &&
            const DeepCollectionEquality()
                .equals(other.selectedCountry, selectedCountry));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_countries),
      const DeepCollectionEquality().hash(_countryStates),
      const DeepCollectionEquality().hash(selectedCountryState),
      const DeepCollectionEquality().hash(selectedCountry));

  @JsonKey(ignore: true)
  @override
  _$$_CountriesStateDataCopyWith<_$_CountriesStateData> get copyWith =>
      __$$_CountriesStateDataCopyWithImpl<_$_CountriesStateData>(
          this, _$identity);
}

abstract class _CountriesStateData implements CountriesStateData {
  const factory _CountriesStateData(
      {required final List<Country> countries,
      required final List<CountryState> countryStates,
      final CountryState? selectedCountryState,
      final Country? selectedCountry}) = _$_CountriesStateData;

  @override
  List<Country> get countries;
  @override
  List<CountryState> get countryStates;
  @override
  CountryState? get selectedCountryState;
  @override
  Country? get selectedCountry;
  @override
  @JsonKey(ignore: true)
  _$$_CountriesStateDataCopyWith<_$_CountriesStateData> get copyWith =>
      throw _privateConstructorUsedError;
}
