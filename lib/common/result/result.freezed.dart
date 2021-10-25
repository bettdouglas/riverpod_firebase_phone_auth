// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ResultTearOff {
  const _$ResultTearOff();

  _Ok<T, E> ok<T, E>(T data) {
    return _Ok<T, E>(
      data,
    );
  }

  _Error<T, E> error<T, E>(E err) {
    return _Error<T, E>(
      err,
    );
  }
}

/// @nodoc
const $Result = _$ResultTearOff();

/// @nodoc
mixin _$Result<T, E> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) ok,
    required TResult Function(E err) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? ok,
    TResult Function(E err)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Ok<T, E> value) ok,
    required TResult Function(_Error<T, E> value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Ok<T, E> value)? ok,
    TResult Function(_Error<T, E> value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultCopyWith<T, E, $Res> {
  factory $ResultCopyWith(
          Result<T, E> value, $Res Function(Result<T, E>) then) =
      _$ResultCopyWithImpl<T, E, $Res>;
}

/// @nodoc
class _$ResultCopyWithImpl<T, E, $Res> implements $ResultCopyWith<T, E, $Res> {
  _$ResultCopyWithImpl(this._value, this._then);

  final Result<T, E> _value;
  // ignore: unused_field
  final $Res Function(Result<T, E>) _then;
}

/// @nodoc
abstract class _$OkCopyWith<T, E, $Res> {
  factory _$OkCopyWith(_Ok<T, E> value, $Res Function(_Ok<T, E>) then) =
      __$OkCopyWithImpl<T, E, $Res>;
  $Res call({T data});
}

/// @nodoc
class __$OkCopyWithImpl<T, E, $Res> extends _$ResultCopyWithImpl<T, E, $Res>
    implements _$OkCopyWith<T, E, $Res> {
  __$OkCopyWithImpl(_Ok<T, E> _value, $Res Function(_Ok<T, E>) _then)
      : super(_value, (v) => _then(v as _Ok<T, E>));

  @override
  _Ok<T, E> get _value => super._value as _Ok<T, E>;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_Ok<T, E>(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$_Ok<T, E> implements _Ok<T, E> {
  const _$_Ok(this.data);

  @override
  final T data;

  @override
  String toString() {
    return 'Result<$T, $E>.ok(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Ok<T, E> &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  _$OkCopyWith<T, E, _Ok<T, E>> get copyWith =>
      __$OkCopyWithImpl<T, E, _Ok<T, E>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) ok,
    required TResult Function(E err) error,
  }) {
    return ok(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? ok,
    TResult Function(E err)? error,
    required TResult orElse(),
  }) {
    if (ok != null) {
      return ok(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Ok<T, E> value) ok,
    required TResult Function(_Error<T, E> value) error,
  }) {
    return ok(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Ok<T, E> value)? ok,
    TResult Function(_Error<T, E> value)? error,
    required TResult orElse(),
  }) {
    if (ok != null) {
      return ok(this);
    }
    return orElse();
  }
}

abstract class _Ok<T, E> implements Result<T, E> {
  const factory _Ok(T data) = _$_Ok<T, E>;

  T get data => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$OkCopyWith<T, E, _Ok<T, E>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ErrorCopyWith<T, E, $Res> {
  factory _$ErrorCopyWith(
          _Error<T, E> value, $Res Function(_Error<T, E>) then) =
      __$ErrorCopyWithImpl<T, E, $Res>;
  $Res call({E err});
}

/// @nodoc
class __$ErrorCopyWithImpl<T, E, $Res> extends _$ResultCopyWithImpl<T, E, $Res>
    implements _$ErrorCopyWith<T, E, $Res> {
  __$ErrorCopyWithImpl(_Error<T, E> _value, $Res Function(_Error<T, E>) _then)
      : super(_value, (v) => _then(v as _Error<T, E>));

  @override
  _Error<T, E> get _value => super._value as _Error<T, E>;

  @override
  $Res call({
    Object? err = freezed,
  }) {
    return _then(_Error<T, E>(
      err == freezed
          ? _value.err
          : err // ignore: cast_nullable_to_non_nullable
              as E,
    ));
  }
}

/// @nodoc

class _$_Error<T, E> implements _Error<T, E> {
  const _$_Error(this.err);

  @override
  final E err;

  @override
  String toString() {
    return 'Result<$T, $E>.error(err: $err)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Error<T, E> &&
            (identical(other.err, err) ||
                const DeepCollectionEquality().equals(other.err, err)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(err);

  @JsonKey(ignore: true)
  @override
  _$ErrorCopyWith<T, E, _Error<T, E>> get copyWith =>
      __$ErrorCopyWithImpl<T, E, _Error<T, E>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) ok,
    required TResult Function(E err) error,
  }) {
    return error(err);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? ok,
    TResult Function(E err)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(err);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Ok<T, E> value) ok,
    required TResult Function(_Error<T, E> value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Ok<T, E> value)? ok,
    TResult Function(_Error<T, E> value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error<T, E> implements Result<T, E> {
  const factory _Error(E err) = _$_Error<T, E>;

  E get err => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ErrorCopyWith<T, E, _Error<T, E>> get copyWith =>
      throw _privateConstructorUsedError;
}
