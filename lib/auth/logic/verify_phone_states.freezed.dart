// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'verify_phone_states.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$VerifyPhoneStatesTearOff {
  const _$VerifyPhoneStatesTearOff();

  _Completed completed(PhoneAuthCredential credential) {
    return _Completed(
      credential,
    );
  }

  _Failed failed(FirebaseAuthException exception) {
    return _Failed(
      exception,
    );
  }

  _CodeSent codeSent(String verificationId, int? resendToken) {
    return _CodeSent(
      verificationId,
      resendToken,
    );
  }

  _CodeRetrievalTimeout codeRetrievalTimeout(String verificationId) {
    return _CodeRetrievalTimeout(
      verificationId,
    );
  }
}

/// @nodoc
const $VerifyPhoneStates = _$VerifyPhoneStatesTearOff();

/// @nodoc
mixin _$VerifyPhoneStates {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PhoneAuthCredential credential) completed,
    required TResult Function(FirebaseAuthException exception) failed,
    required TResult Function(String verificationId, int? resendToken) codeSent,
    required TResult Function(String verificationId) codeRetrievalTimeout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PhoneAuthCredential credential)? completed,
    TResult Function(FirebaseAuthException exception)? failed,
    TResult Function(String verificationId, int? resendToken)? codeSent,
    TResult Function(String verificationId)? codeRetrievalTimeout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Completed value) completed,
    required TResult Function(_Failed value) failed,
    required TResult Function(_CodeSent value) codeSent,
    required TResult Function(_CodeRetrievalTimeout value) codeRetrievalTimeout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Completed value)? completed,
    TResult Function(_Failed value)? failed,
    TResult Function(_CodeSent value)? codeSent,
    TResult Function(_CodeRetrievalTimeout value)? codeRetrievalTimeout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifyPhoneStatesCopyWith<$Res> {
  factory $VerifyPhoneStatesCopyWith(
          VerifyPhoneStates value, $Res Function(VerifyPhoneStates) then) =
      _$VerifyPhoneStatesCopyWithImpl<$Res>;
}

/// @nodoc
class _$VerifyPhoneStatesCopyWithImpl<$Res>
    implements $VerifyPhoneStatesCopyWith<$Res> {
  _$VerifyPhoneStatesCopyWithImpl(this._value, this._then);

  final VerifyPhoneStates _value;
  // ignore: unused_field
  final $Res Function(VerifyPhoneStates) _then;
}

/// @nodoc
abstract class _$CompletedCopyWith<$Res> {
  factory _$CompletedCopyWith(
          _Completed value, $Res Function(_Completed) then) =
      __$CompletedCopyWithImpl<$Res>;
  $Res call({PhoneAuthCredential credential});
}

/// @nodoc
class __$CompletedCopyWithImpl<$Res>
    extends _$VerifyPhoneStatesCopyWithImpl<$Res>
    implements _$CompletedCopyWith<$Res> {
  __$CompletedCopyWithImpl(_Completed _value, $Res Function(_Completed) _then)
      : super(_value, (v) => _then(v as _Completed));

  @override
  _Completed get _value => super._value as _Completed;

  @override
  $Res call({
    Object? credential = freezed,
  }) {
    return _then(_Completed(
      credential == freezed
          ? _value.credential
          : credential // ignore: cast_nullable_to_non_nullable
              as PhoneAuthCredential,
    ));
  }
}

/// @nodoc

class _$_Completed implements _Completed {
  const _$_Completed(this.credential);

  @override
  final PhoneAuthCredential credential;

  @override
  String toString() {
    return 'VerifyPhoneStates.completed(credential: $credential)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Completed &&
            (identical(other.credential, credential) ||
                const DeepCollectionEquality()
                    .equals(other.credential, credential)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(credential);

  @JsonKey(ignore: true)
  @override
  _$CompletedCopyWith<_Completed> get copyWith =>
      __$CompletedCopyWithImpl<_Completed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PhoneAuthCredential credential) completed,
    required TResult Function(FirebaseAuthException exception) failed,
    required TResult Function(String verificationId, int? resendToken) codeSent,
    required TResult Function(String verificationId) codeRetrievalTimeout,
  }) {
    return completed(credential);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PhoneAuthCredential credential)? completed,
    TResult Function(FirebaseAuthException exception)? failed,
    TResult Function(String verificationId, int? resendToken)? codeSent,
    TResult Function(String verificationId)? codeRetrievalTimeout,
    required TResult orElse(),
  }) {
    if (completed != null) {
      return completed(credential);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Completed value) completed,
    required TResult Function(_Failed value) failed,
    required TResult Function(_CodeSent value) codeSent,
    required TResult Function(_CodeRetrievalTimeout value) codeRetrievalTimeout,
  }) {
    return completed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Completed value)? completed,
    TResult Function(_Failed value)? failed,
    TResult Function(_CodeSent value)? codeSent,
    TResult Function(_CodeRetrievalTimeout value)? codeRetrievalTimeout,
    required TResult orElse(),
  }) {
    if (completed != null) {
      return completed(this);
    }
    return orElse();
  }
}

abstract class _Completed implements VerifyPhoneStates {
  const factory _Completed(PhoneAuthCredential credential) = _$_Completed;

  PhoneAuthCredential get credential => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$CompletedCopyWith<_Completed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FailedCopyWith<$Res> {
  factory _$FailedCopyWith(_Failed value, $Res Function(_Failed) then) =
      __$FailedCopyWithImpl<$Res>;
  $Res call({FirebaseAuthException exception});
}

/// @nodoc
class __$FailedCopyWithImpl<$Res> extends _$VerifyPhoneStatesCopyWithImpl<$Res>
    implements _$FailedCopyWith<$Res> {
  __$FailedCopyWithImpl(_Failed _value, $Res Function(_Failed) _then)
      : super(_value, (v) => _then(v as _Failed));

  @override
  _Failed get _value => super._value as _Failed;

  @override
  $Res call({
    Object? exception = freezed,
  }) {
    return _then(_Failed(
      exception == freezed
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as FirebaseAuthException,
    ));
  }
}

/// @nodoc

class _$_Failed implements _Failed {
  const _$_Failed(this.exception);

  @override
  final FirebaseAuthException exception;

  @override
  String toString() {
    return 'VerifyPhoneStates.failed(exception: $exception)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Failed &&
            (identical(other.exception, exception) ||
                const DeepCollectionEquality()
                    .equals(other.exception, exception)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(exception);

  @JsonKey(ignore: true)
  @override
  _$FailedCopyWith<_Failed> get copyWith =>
      __$FailedCopyWithImpl<_Failed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PhoneAuthCredential credential) completed,
    required TResult Function(FirebaseAuthException exception) failed,
    required TResult Function(String verificationId, int? resendToken) codeSent,
    required TResult Function(String verificationId) codeRetrievalTimeout,
  }) {
    return failed(exception);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PhoneAuthCredential credential)? completed,
    TResult Function(FirebaseAuthException exception)? failed,
    TResult Function(String verificationId, int? resendToken)? codeSent,
    TResult Function(String verificationId)? codeRetrievalTimeout,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(exception);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Completed value) completed,
    required TResult Function(_Failed value) failed,
    required TResult Function(_CodeSent value) codeSent,
    required TResult Function(_CodeRetrievalTimeout value) codeRetrievalTimeout,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Completed value)? completed,
    TResult Function(_Failed value)? failed,
    TResult Function(_CodeSent value)? codeSent,
    TResult Function(_CodeRetrievalTimeout value)? codeRetrievalTimeout,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _Failed implements VerifyPhoneStates {
  const factory _Failed(FirebaseAuthException exception) = _$_Failed;

  FirebaseAuthException get exception => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$FailedCopyWith<_Failed> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CodeSentCopyWith<$Res> {
  factory _$CodeSentCopyWith(_CodeSent value, $Res Function(_CodeSent) then) =
      __$CodeSentCopyWithImpl<$Res>;
  $Res call({String verificationId, int? resendToken});
}

/// @nodoc
class __$CodeSentCopyWithImpl<$Res>
    extends _$VerifyPhoneStatesCopyWithImpl<$Res>
    implements _$CodeSentCopyWith<$Res> {
  __$CodeSentCopyWithImpl(_CodeSent _value, $Res Function(_CodeSent) _then)
      : super(_value, (v) => _then(v as _CodeSent));

  @override
  _CodeSent get _value => super._value as _CodeSent;

  @override
  $Res call({
    Object? verificationId = freezed,
    Object? resendToken = freezed,
  }) {
    return _then(_CodeSent(
      verificationId == freezed
          ? _value.verificationId
          : verificationId // ignore: cast_nullable_to_non_nullable
              as String,
      resendToken == freezed
          ? _value.resendToken
          : resendToken // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_CodeSent implements _CodeSent {
  const _$_CodeSent(this.verificationId, this.resendToken);

  @override
  final String verificationId;
  @override
  final int? resendToken;

  @override
  String toString() {
    return 'VerifyPhoneStates.codeSent(verificationId: $verificationId, resendToken: $resendToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CodeSent &&
            (identical(other.verificationId, verificationId) ||
                const DeepCollectionEquality()
                    .equals(other.verificationId, verificationId)) &&
            (identical(other.resendToken, resendToken) ||
                const DeepCollectionEquality()
                    .equals(other.resendToken, resendToken)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(verificationId) ^
      const DeepCollectionEquality().hash(resendToken);

  @JsonKey(ignore: true)
  @override
  _$CodeSentCopyWith<_CodeSent> get copyWith =>
      __$CodeSentCopyWithImpl<_CodeSent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PhoneAuthCredential credential) completed,
    required TResult Function(FirebaseAuthException exception) failed,
    required TResult Function(String verificationId, int? resendToken) codeSent,
    required TResult Function(String verificationId) codeRetrievalTimeout,
  }) {
    return codeSent(verificationId, resendToken);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PhoneAuthCredential credential)? completed,
    TResult Function(FirebaseAuthException exception)? failed,
    TResult Function(String verificationId, int? resendToken)? codeSent,
    TResult Function(String verificationId)? codeRetrievalTimeout,
    required TResult orElse(),
  }) {
    if (codeSent != null) {
      return codeSent(verificationId, resendToken);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Completed value) completed,
    required TResult Function(_Failed value) failed,
    required TResult Function(_CodeSent value) codeSent,
    required TResult Function(_CodeRetrievalTimeout value) codeRetrievalTimeout,
  }) {
    return codeSent(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Completed value)? completed,
    TResult Function(_Failed value)? failed,
    TResult Function(_CodeSent value)? codeSent,
    TResult Function(_CodeRetrievalTimeout value)? codeRetrievalTimeout,
    required TResult orElse(),
  }) {
    if (codeSent != null) {
      return codeSent(this);
    }
    return orElse();
  }
}

abstract class _CodeSent implements VerifyPhoneStates {
  const factory _CodeSent(String verificationId, int? resendToken) =
      _$_CodeSent;

  String get verificationId => throw _privateConstructorUsedError;
  int? get resendToken => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$CodeSentCopyWith<_CodeSent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CodeRetrievalTimeoutCopyWith<$Res> {
  factory _$CodeRetrievalTimeoutCopyWith(_CodeRetrievalTimeout value,
          $Res Function(_CodeRetrievalTimeout) then) =
      __$CodeRetrievalTimeoutCopyWithImpl<$Res>;
  $Res call({String verificationId});
}

/// @nodoc
class __$CodeRetrievalTimeoutCopyWithImpl<$Res>
    extends _$VerifyPhoneStatesCopyWithImpl<$Res>
    implements _$CodeRetrievalTimeoutCopyWith<$Res> {
  __$CodeRetrievalTimeoutCopyWithImpl(
      _CodeRetrievalTimeout _value, $Res Function(_CodeRetrievalTimeout) _then)
      : super(_value, (v) => _then(v as _CodeRetrievalTimeout));

  @override
  _CodeRetrievalTimeout get _value => super._value as _CodeRetrievalTimeout;

  @override
  $Res call({
    Object? verificationId = freezed,
  }) {
    return _then(_CodeRetrievalTimeout(
      verificationId == freezed
          ? _value.verificationId
          : verificationId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CodeRetrievalTimeout implements _CodeRetrievalTimeout {
  const _$_CodeRetrievalTimeout(this.verificationId);

  @override
  final String verificationId;

  @override
  String toString() {
    return 'VerifyPhoneStates.codeRetrievalTimeout(verificationId: $verificationId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CodeRetrievalTimeout &&
            (identical(other.verificationId, verificationId) ||
                const DeepCollectionEquality()
                    .equals(other.verificationId, verificationId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(verificationId);

  @JsonKey(ignore: true)
  @override
  _$CodeRetrievalTimeoutCopyWith<_CodeRetrievalTimeout> get copyWith =>
      __$CodeRetrievalTimeoutCopyWithImpl<_CodeRetrievalTimeout>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PhoneAuthCredential credential) completed,
    required TResult Function(FirebaseAuthException exception) failed,
    required TResult Function(String verificationId, int? resendToken) codeSent,
    required TResult Function(String verificationId) codeRetrievalTimeout,
  }) {
    return codeRetrievalTimeout(verificationId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PhoneAuthCredential credential)? completed,
    TResult Function(FirebaseAuthException exception)? failed,
    TResult Function(String verificationId, int? resendToken)? codeSent,
    TResult Function(String verificationId)? codeRetrievalTimeout,
    required TResult orElse(),
  }) {
    if (codeRetrievalTimeout != null) {
      return codeRetrievalTimeout(verificationId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Completed value) completed,
    required TResult Function(_Failed value) failed,
    required TResult Function(_CodeSent value) codeSent,
    required TResult Function(_CodeRetrievalTimeout value) codeRetrievalTimeout,
  }) {
    return codeRetrievalTimeout(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Completed value)? completed,
    TResult Function(_Failed value)? failed,
    TResult Function(_CodeSent value)? codeSent,
    TResult Function(_CodeRetrievalTimeout value)? codeRetrievalTimeout,
    required TResult orElse(),
  }) {
    if (codeRetrievalTimeout != null) {
      return codeRetrievalTimeout(this);
    }
    return orElse();
  }
}

abstract class _CodeRetrievalTimeout implements VerifyPhoneStates {
  const factory _CodeRetrievalTimeout(String verificationId) =
      _$_CodeRetrievalTimeout;

  String get verificationId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$CodeRetrievalTimeoutCopyWith<_CodeRetrievalTimeout> get copyWith =>
      throw _privateConstructorUsedError;
}
