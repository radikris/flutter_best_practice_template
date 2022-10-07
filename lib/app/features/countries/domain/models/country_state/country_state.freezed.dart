// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'country_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CountryState _$CountryStateFromJson(Map<String, dynamic> json) {
  return _CountryState.fromJson(json);
}

/// @nodoc
mixin _$CountryState {
  String get id => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CountryStateCopyWith<CountryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountryStateCopyWith<$Res> {
  factory $CountryStateCopyWith(
          CountryState value, $Res Function(CountryState) then) =
      _$CountryStateCopyWithImpl<$Res>;
  $Res call({String id, String value});
}

/// @nodoc
class _$CountryStateCopyWithImpl<$Res> implements $CountryStateCopyWith<$Res> {
  _$CountryStateCopyWithImpl(this._value, this._then);

  final CountryState _value;
  // ignore: unused_field
  final $Res Function(CountryState) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_CountryStateCopyWith<$Res>
    implements $CountryStateCopyWith<$Res> {
  factory _$$_CountryStateCopyWith(
          _$_CountryState value, $Res Function(_$_CountryState) then) =
      __$$_CountryStateCopyWithImpl<$Res>;
  @override
  $Res call({String id, String value});
}

/// @nodoc
class __$$_CountryStateCopyWithImpl<$Res>
    extends _$CountryStateCopyWithImpl<$Res>
    implements _$$_CountryStateCopyWith<$Res> {
  __$$_CountryStateCopyWithImpl(
      _$_CountryState _value, $Res Function(_$_CountryState) _then)
      : super(_value, (v) => _then(v as _$_CountryState));

  @override
  _$_CountryState get _value => super._value as _$_CountryState;

  @override
  $Res call({
    Object? id = freezed,
    Object? value = freezed,
  }) {
    return _then(_$_CountryState(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CountryState implements _CountryState {
  const _$_CountryState({required this.id, required this.value});

  factory _$_CountryState.fromJson(Map<String, dynamic> json) =>
      _$$_CountryStateFromJson(json);

  @override
  final String id;
  @override
  final String value;

  @override
  String toString() {
    return 'CountryState(id: $id, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CountryState &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$$_CountryStateCopyWith<_$_CountryState> get copyWith =>
      __$$_CountryStateCopyWithImpl<_$_CountryState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CountryStateToJson(
      this,
    );
  }
}

abstract class _CountryState implements CountryState {
  const factory _CountryState(
      {required final String id,
      required final String value}) = _$_CountryState;

  factory _CountryState.fromJson(Map<String, dynamic> json) =
      _$_CountryState.fromJson;

  @override
  String get id;
  @override
  String get value;
  @override
  @JsonKey(ignore: true)
  _$$_CountryStateCopyWith<_$_CountryState> get copyWith =>
      throw _privateConstructorUsedError;
}
