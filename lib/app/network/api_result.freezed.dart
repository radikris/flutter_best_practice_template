// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'api_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ApiResult<T> _$ApiResultFromJson<T>(
    Map<String, dynamic> json, T Function(Object?) fromJsonT) {
  switch (json['runtimeType']) {
    case 'data':
      return ApiResultData<T>.fromJson(json, fromJsonT);
    case 'error':
      return ApiResultError<T>.fromJson(json, fromJsonT);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'ApiResult',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$ApiResult<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) data,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T data)? data,
    TResult Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? data,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApiResultData<T> value) data,
    required TResult Function(ApiResultError<T> value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ApiResultData<T> value)? data,
    TResult Function(ApiResultError<T> value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApiResultData<T> value)? data,
    TResult Function(ApiResultError<T> value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiResultCopyWith<T, $Res> {
  factory $ApiResultCopyWith(
          ApiResult<T> value, $Res Function(ApiResult<T>) then) =
      _$ApiResultCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$ApiResultCopyWithImpl<T, $Res> implements $ApiResultCopyWith<T, $Res> {
  _$ApiResultCopyWithImpl(this._value, this._then);

  final ApiResult<T> _value;
  // ignore: unused_field
  final $Res Function(ApiResult<T>) _then;
}

/// @nodoc
abstract class _$$ApiResultDataCopyWith<T, $Res> {
  factory _$$ApiResultDataCopyWith(
          _$ApiResultData<T> value, $Res Function(_$ApiResultData<T>) then) =
      __$$ApiResultDataCopyWithImpl<T, $Res>;
  $Res call({T data});
}

/// @nodoc
class __$$ApiResultDataCopyWithImpl<T, $Res>
    extends _$ApiResultCopyWithImpl<T, $Res>
    implements _$$ApiResultDataCopyWith<T, $Res> {
  __$$ApiResultDataCopyWithImpl(
      _$ApiResultData<T> _value, $Res Function(_$ApiResultData<T>) _then)
      : super(_value, (v) => _then(v as _$ApiResultData<T>));

  @override
  _$ApiResultData<T> get _value => super._value as _$ApiResultData<T>;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$ApiResultData<T>(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class _$ApiResultData<T> implements ApiResultData<T> {
  const _$ApiResultData(this.data, {final String? $type})
      : $type = $type ?? 'data';

  factory _$ApiResultData.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$$ApiResultDataFromJson(json, fromJsonT);

  @override
  final T data;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ApiResult<$T>.data(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiResultData<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$$ApiResultDataCopyWith<T, _$ApiResultData<T>> get copyWith =>
      __$$ApiResultDataCopyWithImpl<T, _$ApiResultData<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) data,
    required TResult Function(String error) error,
  }) {
    return data(this.data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T data)? data,
    TResult Function(String error)? error,
  }) {
    return data?.call(this.data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? data,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this.data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApiResultData<T> value) data,
    required TResult Function(ApiResultError<T> value) error,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ApiResultData<T> value)? data,
    TResult Function(ApiResultError<T> value)? error,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApiResultData<T> value)? data,
    TResult Function(ApiResultError<T> value)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
    return _$$ApiResultDataToJson<T>(this, toJsonT);
  }
}

abstract class ApiResultData<T> implements ApiResult<T> {
  const factory ApiResultData(final T data) = _$ApiResultData<T>;

  factory ApiResultData.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =
      _$ApiResultData<T>.fromJson;

  T get data;
  @JsonKey(ignore: true)
  _$$ApiResultDataCopyWith<T, _$ApiResultData<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ApiResultErrorCopyWith<T, $Res> {
  factory _$$ApiResultErrorCopyWith(
          _$ApiResultError<T> value, $Res Function(_$ApiResultError<T>) then) =
      __$$ApiResultErrorCopyWithImpl<T, $Res>;
  $Res call({String error});
}

/// @nodoc
class __$$ApiResultErrorCopyWithImpl<T, $Res>
    extends _$ApiResultCopyWithImpl<T, $Res>
    implements _$$ApiResultErrorCopyWith<T, $Res> {
  __$$ApiResultErrorCopyWithImpl(
      _$ApiResultError<T> _value, $Res Function(_$ApiResultError<T>) _then)
      : super(_value, (v) => _then(v as _$ApiResultError<T>));

  @override
  _$ApiResultError<T> get _value => super._value as _$ApiResultError<T>;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$ApiResultError<T>(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class _$ApiResultError<T> implements ApiResultError<T> {
  const _$ApiResultError(this.error, {final String? $type})
      : $type = $type ?? 'error';

  factory _$ApiResultError.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$$ApiResultErrorFromJson(json, fromJsonT);

  @override
  final String error;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ApiResult<$T>.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiResultError<T> &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$$ApiResultErrorCopyWith<T, _$ApiResultError<T>> get copyWith =>
      __$$ApiResultErrorCopyWithImpl<T, _$ApiResultError<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) data,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T data)? data,
    TResult Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? data,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApiResultData<T> value) data,
    required TResult Function(ApiResultError<T> value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ApiResultData<T> value)? data,
    TResult Function(ApiResultError<T> value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApiResultData<T> value)? data,
    TResult Function(ApiResultError<T> value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
    return _$$ApiResultErrorToJson<T>(this, toJsonT);
  }
}

abstract class ApiResultError<T> implements ApiResult<T> {
  const factory ApiResultError(final String error) = _$ApiResultError<T>;

  factory ApiResultError.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =
      _$ApiResultError<T>.fromJson;

  String get error;
  @JsonKey(ignore: true)
  _$$ApiResultErrorCopyWith<T, _$ApiResultError<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
