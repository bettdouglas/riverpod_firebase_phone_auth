// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'auth_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthStateTearOff {
  const _$AuthStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _Loading loading(String msg) {
    return _Loading(
      msg,
    );
  }

  _WaitingForUserInput waitingForUserInput() {
    return const _WaitingForUserInput();
  }

  _CodeSent codeSent(String verificationId) {
    return _CodeSent(
      verificationId,
    );
  }

  _GotFirebaseUser gotFirebaseUser(User user) {
    return _GotFirebaseUser(
      user,
    );
  }

  _Success success(User firebaseUser, CustomUser user) {
    return _Success(
      firebaseUser,
      user,
    );
  }

  _CodeTimedOut codeRetreivalTimedOut() {
    return const _CodeTimedOut();
  }

  _VerificationError verificationError(
      FirebaseAuthException firebaseAuthException,
      {String? verificationId,
      String? message}) {
    return _VerificationError(
      firebaseAuthException,
      verificationId: verificationId,
      message: message,
    );
  }

  _InvalidPhoneNumber invalidPhoneNumber(
      FirebaseAuthException firebaseAuthException,
      dynamic Function(String) retry,
      String message) {
    return _InvalidPhoneNumber(
      firebaseAuthException,
      retry,
      message,
    );
  }

  _UnknownError unknownError(Object error, StackTrace? stackTrace) {
    return _UnknownError(
      error,
      stackTrace,
    );
  }
}

/// @nodoc
const $AuthState = _$AuthStateTearOff();

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String msg) loading,
    required TResult Function() waitingForUserInput,
    required TResult Function(String verificationId) codeSent,
    required TResult Function(User user) gotFirebaseUser,
    required TResult Function(User firebaseUser, CustomUser user) success,
    required TResult Function() codeRetreivalTimedOut,
    required TResult Function(FirebaseAuthException firebaseAuthException,
            String? verificationId, String? message)
        verificationError,
    required TResult Function(FirebaseAuthException firebaseAuthException,
            dynamic Function(String) retry, String message)
        invalidPhoneNumber,
    required TResult Function(Object error, StackTrace? stackTrace)
        unknownError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String msg)? loading,
    TResult Function()? waitingForUserInput,
    TResult Function(String verificationId)? codeSent,
    TResult Function(User user)? gotFirebaseUser,
    TResult Function(User firebaseUser, CustomUser user)? success,
    TResult Function()? codeRetreivalTimedOut,
    TResult Function(FirebaseAuthException firebaseAuthException,
            String? verificationId, String? message)?
        verificationError,
    TResult Function(FirebaseAuthException firebaseAuthException,
            dynamic Function(String) retry, String message)?
        invalidPhoneNumber,
    TResult Function(Object error, StackTrace? stackTrace)? unknownError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_WaitingForUserInput value) waitingForUserInput,
    required TResult Function(_CodeSent value) codeSent,
    required TResult Function(_GotFirebaseUser value) gotFirebaseUser,
    required TResult Function(_Success value) success,
    required TResult Function(_CodeTimedOut value) codeRetreivalTimedOut,
    required TResult Function(_VerificationError value) verificationError,
    required TResult Function(_InvalidPhoneNumber value) invalidPhoneNumber,
    required TResult Function(_UnknownError value) unknownError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_WaitingForUserInput value)? waitingForUserInput,
    TResult Function(_CodeSent value)? codeSent,
    TResult Function(_GotFirebaseUser value)? gotFirebaseUser,
    TResult Function(_Success value)? success,
    TResult Function(_CodeTimedOut value)? codeRetreivalTimedOut,
    TResult Function(_VerificationError value)? verificationError,
    TResult Function(_InvalidPhoneNumber value)? invalidPhoneNumber,
    TResult Function(_UnknownError value)? unknownError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res> implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  final AuthState _value;
  // ignore: unused_field
  final $Res Function(AuthState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'AuthState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String msg) loading,
    required TResult Function() waitingForUserInput,
    required TResult Function(String verificationId) codeSent,
    required TResult Function(User user) gotFirebaseUser,
    required TResult Function(User firebaseUser, CustomUser user) success,
    required TResult Function() codeRetreivalTimedOut,
    required TResult Function(FirebaseAuthException firebaseAuthException,
            String? verificationId, String? message)
        verificationError,
    required TResult Function(FirebaseAuthException firebaseAuthException,
            dynamic Function(String) retry, String message)
        invalidPhoneNumber,
    required TResult Function(Object error, StackTrace? stackTrace)
        unknownError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String msg)? loading,
    TResult Function()? waitingForUserInput,
    TResult Function(String verificationId)? codeSent,
    TResult Function(User user)? gotFirebaseUser,
    TResult Function(User firebaseUser, CustomUser user)? success,
    TResult Function()? codeRetreivalTimedOut,
    TResult Function(FirebaseAuthException firebaseAuthException,
            String? verificationId, String? message)?
        verificationError,
    TResult Function(FirebaseAuthException firebaseAuthException,
            dynamic Function(String) retry, String message)?
        invalidPhoneNumber,
    TResult Function(Object error, StackTrace? stackTrace)? unknownError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_WaitingForUserInput value) waitingForUserInput,
    required TResult Function(_CodeSent value) codeSent,
    required TResult Function(_GotFirebaseUser value) gotFirebaseUser,
    required TResult Function(_Success value) success,
    required TResult Function(_CodeTimedOut value) codeRetreivalTimedOut,
    required TResult Function(_VerificationError value) verificationError,
    required TResult Function(_InvalidPhoneNumber value) invalidPhoneNumber,
    required TResult Function(_UnknownError value) unknownError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_WaitingForUserInput value)? waitingForUserInput,
    TResult Function(_CodeSent value)? codeSent,
    TResult Function(_GotFirebaseUser value)? gotFirebaseUser,
    TResult Function(_Success value)? success,
    TResult Function(_CodeTimedOut value)? codeRetreivalTimedOut,
    TResult Function(_VerificationError value)? verificationError,
    TResult Function(_InvalidPhoneNumber value)? invalidPhoneNumber,
    TResult Function(_UnknownError value)? unknownError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AuthState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
  $Res call({String msg});
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;

  @override
  $Res call({
    Object? msg = freezed,
  }) {
    return _then(_Loading(
      msg == freezed
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading(this.msg);

  @override
  final String msg;

  @override
  String toString() {
    return 'AuthState.loading(msg: $msg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Loading &&
            (identical(other.msg, msg) ||
                const DeepCollectionEquality().equals(other.msg, msg)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(msg);

  @JsonKey(ignore: true)
  @override
  _$LoadingCopyWith<_Loading> get copyWith =>
      __$LoadingCopyWithImpl<_Loading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String msg) loading,
    required TResult Function() waitingForUserInput,
    required TResult Function(String verificationId) codeSent,
    required TResult Function(User user) gotFirebaseUser,
    required TResult Function(User firebaseUser, CustomUser user) success,
    required TResult Function() codeRetreivalTimedOut,
    required TResult Function(FirebaseAuthException firebaseAuthException,
            String? verificationId, String? message)
        verificationError,
    required TResult Function(FirebaseAuthException firebaseAuthException,
            dynamic Function(String) retry, String message)
        invalidPhoneNumber,
    required TResult Function(Object error, StackTrace? stackTrace)
        unknownError,
  }) {
    return loading(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String msg)? loading,
    TResult Function()? waitingForUserInput,
    TResult Function(String verificationId)? codeSent,
    TResult Function(User user)? gotFirebaseUser,
    TResult Function(User firebaseUser, CustomUser user)? success,
    TResult Function()? codeRetreivalTimedOut,
    TResult Function(FirebaseAuthException firebaseAuthException,
            String? verificationId, String? message)?
        verificationError,
    TResult Function(FirebaseAuthException firebaseAuthException,
            dynamic Function(String) retry, String message)?
        invalidPhoneNumber,
    TResult Function(Object error, StackTrace? stackTrace)? unknownError,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_WaitingForUserInput value) waitingForUserInput,
    required TResult Function(_CodeSent value) codeSent,
    required TResult Function(_GotFirebaseUser value) gotFirebaseUser,
    required TResult Function(_Success value) success,
    required TResult Function(_CodeTimedOut value) codeRetreivalTimedOut,
    required TResult Function(_VerificationError value) verificationError,
    required TResult Function(_InvalidPhoneNumber value) invalidPhoneNumber,
    required TResult Function(_UnknownError value) unknownError,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_WaitingForUserInput value)? waitingForUserInput,
    TResult Function(_CodeSent value)? codeSent,
    TResult Function(_GotFirebaseUser value)? gotFirebaseUser,
    TResult Function(_Success value)? success,
    TResult Function(_CodeTimedOut value)? codeRetreivalTimedOut,
    TResult Function(_VerificationError value)? verificationError,
    TResult Function(_InvalidPhoneNumber value)? invalidPhoneNumber,
    TResult Function(_UnknownError value)? unknownError,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements AuthState {
  const factory _Loading(String msg) = _$_Loading;

  String get msg => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadingCopyWith<_Loading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$WaitingForUserInputCopyWith<$Res> {
  factory _$WaitingForUserInputCopyWith(_WaitingForUserInput value,
          $Res Function(_WaitingForUserInput) then) =
      __$WaitingForUserInputCopyWithImpl<$Res>;
}

/// @nodoc
class __$WaitingForUserInputCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements _$WaitingForUserInputCopyWith<$Res> {
  __$WaitingForUserInputCopyWithImpl(
      _WaitingForUserInput _value, $Res Function(_WaitingForUserInput) _then)
      : super(_value, (v) => _then(v as _WaitingForUserInput));

  @override
  _WaitingForUserInput get _value => super._value as _WaitingForUserInput;
}

/// @nodoc

class _$_WaitingForUserInput implements _WaitingForUserInput {
  const _$_WaitingForUserInput();

  @override
  String toString() {
    return 'AuthState.waitingForUserInput()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _WaitingForUserInput);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String msg) loading,
    required TResult Function() waitingForUserInput,
    required TResult Function(String verificationId) codeSent,
    required TResult Function(User user) gotFirebaseUser,
    required TResult Function(User firebaseUser, CustomUser user) success,
    required TResult Function() codeRetreivalTimedOut,
    required TResult Function(FirebaseAuthException firebaseAuthException,
            String? verificationId, String? message)
        verificationError,
    required TResult Function(FirebaseAuthException firebaseAuthException,
            dynamic Function(String) retry, String message)
        invalidPhoneNumber,
    required TResult Function(Object error, StackTrace? stackTrace)
        unknownError,
  }) {
    return waitingForUserInput();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String msg)? loading,
    TResult Function()? waitingForUserInput,
    TResult Function(String verificationId)? codeSent,
    TResult Function(User user)? gotFirebaseUser,
    TResult Function(User firebaseUser, CustomUser user)? success,
    TResult Function()? codeRetreivalTimedOut,
    TResult Function(FirebaseAuthException firebaseAuthException,
            String? verificationId, String? message)?
        verificationError,
    TResult Function(FirebaseAuthException firebaseAuthException,
            dynamic Function(String) retry, String message)?
        invalidPhoneNumber,
    TResult Function(Object error, StackTrace? stackTrace)? unknownError,
    required TResult orElse(),
  }) {
    if (waitingForUserInput != null) {
      return waitingForUserInput();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_WaitingForUserInput value) waitingForUserInput,
    required TResult Function(_CodeSent value) codeSent,
    required TResult Function(_GotFirebaseUser value) gotFirebaseUser,
    required TResult Function(_Success value) success,
    required TResult Function(_CodeTimedOut value) codeRetreivalTimedOut,
    required TResult Function(_VerificationError value) verificationError,
    required TResult Function(_InvalidPhoneNumber value) invalidPhoneNumber,
    required TResult Function(_UnknownError value) unknownError,
  }) {
    return waitingForUserInput(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_WaitingForUserInput value)? waitingForUserInput,
    TResult Function(_CodeSent value)? codeSent,
    TResult Function(_GotFirebaseUser value)? gotFirebaseUser,
    TResult Function(_Success value)? success,
    TResult Function(_CodeTimedOut value)? codeRetreivalTimedOut,
    TResult Function(_VerificationError value)? verificationError,
    TResult Function(_InvalidPhoneNumber value)? invalidPhoneNumber,
    TResult Function(_UnknownError value)? unknownError,
    required TResult orElse(),
  }) {
    if (waitingForUserInput != null) {
      return waitingForUserInput(this);
    }
    return orElse();
  }
}

abstract class _WaitingForUserInput implements AuthState {
  const factory _WaitingForUserInput() = _$_WaitingForUserInput;
}

/// @nodoc
abstract class _$CodeSentCopyWith<$Res> {
  factory _$CodeSentCopyWith(_CodeSent value, $Res Function(_CodeSent) then) =
      __$CodeSentCopyWithImpl<$Res>;
  $Res call({String verificationId});
}

/// @nodoc
class __$CodeSentCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$CodeSentCopyWith<$Res> {
  __$CodeSentCopyWithImpl(_CodeSent _value, $Res Function(_CodeSent) _then)
      : super(_value, (v) => _then(v as _CodeSent));

  @override
  _CodeSent get _value => super._value as _CodeSent;

  @override
  $Res call({
    Object? verificationId = freezed,
  }) {
    return _then(_CodeSent(
      verificationId == freezed
          ? _value.verificationId
          : verificationId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CodeSent implements _CodeSent {
  const _$_CodeSent(this.verificationId);

  @override
  final String verificationId;

  @override
  String toString() {
    return 'AuthState.codeSent(verificationId: $verificationId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CodeSent &&
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
  _$CodeSentCopyWith<_CodeSent> get copyWith =>
      __$CodeSentCopyWithImpl<_CodeSent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String msg) loading,
    required TResult Function() waitingForUserInput,
    required TResult Function(String verificationId) codeSent,
    required TResult Function(User user) gotFirebaseUser,
    required TResult Function(User firebaseUser, CustomUser user) success,
    required TResult Function() codeRetreivalTimedOut,
    required TResult Function(FirebaseAuthException firebaseAuthException,
            String? verificationId, String? message)
        verificationError,
    required TResult Function(FirebaseAuthException firebaseAuthException,
            dynamic Function(String) retry, String message)
        invalidPhoneNumber,
    required TResult Function(Object error, StackTrace? stackTrace)
        unknownError,
  }) {
    return codeSent(verificationId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String msg)? loading,
    TResult Function()? waitingForUserInput,
    TResult Function(String verificationId)? codeSent,
    TResult Function(User user)? gotFirebaseUser,
    TResult Function(User firebaseUser, CustomUser user)? success,
    TResult Function()? codeRetreivalTimedOut,
    TResult Function(FirebaseAuthException firebaseAuthException,
            String? verificationId, String? message)?
        verificationError,
    TResult Function(FirebaseAuthException firebaseAuthException,
            dynamic Function(String) retry, String message)?
        invalidPhoneNumber,
    TResult Function(Object error, StackTrace? stackTrace)? unknownError,
    required TResult orElse(),
  }) {
    if (codeSent != null) {
      return codeSent(verificationId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_WaitingForUserInput value) waitingForUserInput,
    required TResult Function(_CodeSent value) codeSent,
    required TResult Function(_GotFirebaseUser value) gotFirebaseUser,
    required TResult Function(_Success value) success,
    required TResult Function(_CodeTimedOut value) codeRetreivalTimedOut,
    required TResult Function(_VerificationError value) verificationError,
    required TResult Function(_InvalidPhoneNumber value) invalidPhoneNumber,
    required TResult Function(_UnknownError value) unknownError,
  }) {
    return codeSent(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_WaitingForUserInput value)? waitingForUserInput,
    TResult Function(_CodeSent value)? codeSent,
    TResult Function(_GotFirebaseUser value)? gotFirebaseUser,
    TResult Function(_Success value)? success,
    TResult Function(_CodeTimedOut value)? codeRetreivalTimedOut,
    TResult Function(_VerificationError value)? verificationError,
    TResult Function(_InvalidPhoneNumber value)? invalidPhoneNumber,
    TResult Function(_UnknownError value)? unknownError,
    required TResult orElse(),
  }) {
    if (codeSent != null) {
      return codeSent(this);
    }
    return orElse();
  }
}

abstract class _CodeSent implements AuthState {
  const factory _CodeSent(String verificationId) = _$_CodeSent;

  String get verificationId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$CodeSentCopyWith<_CodeSent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GotFirebaseUserCopyWith<$Res> {
  factory _$GotFirebaseUserCopyWith(
          _GotFirebaseUser value, $Res Function(_GotFirebaseUser) then) =
      __$GotFirebaseUserCopyWithImpl<$Res>;
  $Res call({User user});
}

/// @nodoc
class __$GotFirebaseUserCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$GotFirebaseUserCopyWith<$Res> {
  __$GotFirebaseUserCopyWithImpl(
      _GotFirebaseUser _value, $Res Function(_GotFirebaseUser) _then)
      : super(_value, (v) => _then(v as _GotFirebaseUser));

  @override
  _GotFirebaseUser get _value => super._value as _GotFirebaseUser;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_GotFirebaseUser(
      user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc

class _$_GotFirebaseUser implements _GotFirebaseUser {
  const _$_GotFirebaseUser(this.user);

  @override
  final User user;

  @override
  String toString() {
    return 'AuthState.gotFirebaseUser(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GotFirebaseUser &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @JsonKey(ignore: true)
  @override
  _$GotFirebaseUserCopyWith<_GotFirebaseUser> get copyWith =>
      __$GotFirebaseUserCopyWithImpl<_GotFirebaseUser>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String msg) loading,
    required TResult Function() waitingForUserInput,
    required TResult Function(String verificationId) codeSent,
    required TResult Function(User user) gotFirebaseUser,
    required TResult Function(User firebaseUser, CustomUser user) success,
    required TResult Function() codeRetreivalTimedOut,
    required TResult Function(FirebaseAuthException firebaseAuthException,
            String? verificationId, String? message)
        verificationError,
    required TResult Function(FirebaseAuthException firebaseAuthException,
            dynamic Function(String) retry, String message)
        invalidPhoneNumber,
    required TResult Function(Object error, StackTrace? stackTrace)
        unknownError,
  }) {
    return gotFirebaseUser(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String msg)? loading,
    TResult Function()? waitingForUserInput,
    TResult Function(String verificationId)? codeSent,
    TResult Function(User user)? gotFirebaseUser,
    TResult Function(User firebaseUser, CustomUser user)? success,
    TResult Function()? codeRetreivalTimedOut,
    TResult Function(FirebaseAuthException firebaseAuthException,
            String? verificationId, String? message)?
        verificationError,
    TResult Function(FirebaseAuthException firebaseAuthException,
            dynamic Function(String) retry, String message)?
        invalidPhoneNumber,
    TResult Function(Object error, StackTrace? stackTrace)? unknownError,
    required TResult orElse(),
  }) {
    if (gotFirebaseUser != null) {
      return gotFirebaseUser(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_WaitingForUserInput value) waitingForUserInput,
    required TResult Function(_CodeSent value) codeSent,
    required TResult Function(_GotFirebaseUser value) gotFirebaseUser,
    required TResult Function(_Success value) success,
    required TResult Function(_CodeTimedOut value) codeRetreivalTimedOut,
    required TResult Function(_VerificationError value) verificationError,
    required TResult Function(_InvalidPhoneNumber value) invalidPhoneNumber,
    required TResult Function(_UnknownError value) unknownError,
  }) {
    return gotFirebaseUser(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_WaitingForUserInput value)? waitingForUserInput,
    TResult Function(_CodeSent value)? codeSent,
    TResult Function(_GotFirebaseUser value)? gotFirebaseUser,
    TResult Function(_Success value)? success,
    TResult Function(_CodeTimedOut value)? codeRetreivalTimedOut,
    TResult Function(_VerificationError value)? verificationError,
    TResult Function(_InvalidPhoneNumber value)? invalidPhoneNumber,
    TResult Function(_UnknownError value)? unknownError,
    required TResult orElse(),
  }) {
    if (gotFirebaseUser != null) {
      return gotFirebaseUser(this);
    }
    return orElse();
  }
}

abstract class _GotFirebaseUser implements AuthState {
  const factory _GotFirebaseUser(User user) = _$_GotFirebaseUser;

  User get user => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$GotFirebaseUserCopyWith<_GotFirebaseUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SuccessCopyWith<$Res> {
  factory _$SuccessCopyWith(_Success value, $Res Function(_Success) then) =
      __$SuccessCopyWithImpl<$Res>;
  $Res call({User firebaseUser, CustomUser user});
}

/// @nodoc
class __$SuccessCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$SuccessCopyWith<$Res> {
  __$SuccessCopyWithImpl(_Success _value, $Res Function(_Success) _then)
      : super(_value, (v) => _then(v as _Success));

  @override
  _Success get _value => super._value as _Success;

  @override
  $Res call({
    Object? firebaseUser = freezed,
    Object? user = freezed,
  }) {
    return _then(_Success(
      firebaseUser == freezed
          ? _value.firebaseUser
          : firebaseUser // ignore: cast_nullable_to_non_nullable
              as User,
      user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as CustomUser,
    ));
  }
}

/// @nodoc

class _$_Success implements _Success {
  const _$_Success(this.firebaseUser, this.user);

  @override
  final User firebaseUser;
  @override
  final CustomUser user;

  @override
  String toString() {
    return 'AuthState.success(firebaseUser: $firebaseUser, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Success &&
            (identical(other.firebaseUser, firebaseUser) ||
                const DeepCollectionEquality()
                    .equals(other.firebaseUser, firebaseUser)) &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(firebaseUser) ^
      const DeepCollectionEquality().hash(user);

  @JsonKey(ignore: true)
  @override
  _$SuccessCopyWith<_Success> get copyWith =>
      __$SuccessCopyWithImpl<_Success>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String msg) loading,
    required TResult Function() waitingForUserInput,
    required TResult Function(String verificationId) codeSent,
    required TResult Function(User user) gotFirebaseUser,
    required TResult Function(User firebaseUser, CustomUser user) success,
    required TResult Function() codeRetreivalTimedOut,
    required TResult Function(FirebaseAuthException firebaseAuthException,
            String? verificationId, String? message)
        verificationError,
    required TResult Function(FirebaseAuthException firebaseAuthException,
            dynamic Function(String) retry, String message)
        invalidPhoneNumber,
    required TResult Function(Object error, StackTrace? stackTrace)
        unknownError,
  }) {
    return success(firebaseUser, user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String msg)? loading,
    TResult Function()? waitingForUserInput,
    TResult Function(String verificationId)? codeSent,
    TResult Function(User user)? gotFirebaseUser,
    TResult Function(User firebaseUser, CustomUser user)? success,
    TResult Function()? codeRetreivalTimedOut,
    TResult Function(FirebaseAuthException firebaseAuthException,
            String? verificationId, String? message)?
        verificationError,
    TResult Function(FirebaseAuthException firebaseAuthException,
            dynamic Function(String) retry, String message)?
        invalidPhoneNumber,
    TResult Function(Object error, StackTrace? stackTrace)? unknownError,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(firebaseUser, user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_WaitingForUserInput value) waitingForUserInput,
    required TResult Function(_CodeSent value) codeSent,
    required TResult Function(_GotFirebaseUser value) gotFirebaseUser,
    required TResult Function(_Success value) success,
    required TResult Function(_CodeTimedOut value) codeRetreivalTimedOut,
    required TResult Function(_VerificationError value) verificationError,
    required TResult Function(_InvalidPhoneNumber value) invalidPhoneNumber,
    required TResult Function(_UnknownError value) unknownError,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_WaitingForUserInput value)? waitingForUserInput,
    TResult Function(_CodeSent value)? codeSent,
    TResult Function(_GotFirebaseUser value)? gotFirebaseUser,
    TResult Function(_Success value)? success,
    TResult Function(_CodeTimedOut value)? codeRetreivalTimedOut,
    TResult Function(_VerificationError value)? verificationError,
    TResult Function(_InvalidPhoneNumber value)? invalidPhoneNumber,
    TResult Function(_UnknownError value)? unknownError,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements AuthState {
  const factory _Success(User firebaseUser, CustomUser user) = _$_Success;

  User get firebaseUser => throw _privateConstructorUsedError;
  CustomUser get user => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SuccessCopyWith<_Success> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CodeTimedOutCopyWith<$Res> {
  factory _$CodeTimedOutCopyWith(
          _CodeTimedOut value, $Res Function(_CodeTimedOut) then) =
      __$CodeTimedOutCopyWithImpl<$Res>;
}

/// @nodoc
class __$CodeTimedOutCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$CodeTimedOutCopyWith<$Res> {
  __$CodeTimedOutCopyWithImpl(
      _CodeTimedOut _value, $Res Function(_CodeTimedOut) _then)
      : super(_value, (v) => _then(v as _CodeTimedOut));

  @override
  _CodeTimedOut get _value => super._value as _CodeTimedOut;
}

/// @nodoc

class _$_CodeTimedOut implements _CodeTimedOut {
  const _$_CodeTimedOut();

  @override
  String toString() {
    return 'AuthState.codeRetreivalTimedOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _CodeTimedOut);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String msg) loading,
    required TResult Function() waitingForUserInput,
    required TResult Function(String verificationId) codeSent,
    required TResult Function(User user) gotFirebaseUser,
    required TResult Function(User firebaseUser, CustomUser user) success,
    required TResult Function() codeRetreivalTimedOut,
    required TResult Function(FirebaseAuthException firebaseAuthException,
            String? verificationId, String? message)
        verificationError,
    required TResult Function(FirebaseAuthException firebaseAuthException,
            dynamic Function(String) retry, String message)
        invalidPhoneNumber,
    required TResult Function(Object error, StackTrace? stackTrace)
        unknownError,
  }) {
    return codeRetreivalTimedOut();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String msg)? loading,
    TResult Function()? waitingForUserInput,
    TResult Function(String verificationId)? codeSent,
    TResult Function(User user)? gotFirebaseUser,
    TResult Function(User firebaseUser, CustomUser user)? success,
    TResult Function()? codeRetreivalTimedOut,
    TResult Function(FirebaseAuthException firebaseAuthException,
            String? verificationId, String? message)?
        verificationError,
    TResult Function(FirebaseAuthException firebaseAuthException,
            dynamic Function(String) retry, String message)?
        invalidPhoneNumber,
    TResult Function(Object error, StackTrace? stackTrace)? unknownError,
    required TResult orElse(),
  }) {
    if (codeRetreivalTimedOut != null) {
      return codeRetreivalTimedOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_WaitingForUserInput value) waitingForUserInput,
    required TResult Function(_CodeSent value) codeSent,
    required TResult Function(_GotFirebaseUser value) gotFirebaseUser,
    required TResult Function(_Success value) success,
    required TResult Function(_CodeTimedOut value) codeRetreivalTimedOut,
    required TResult Function(_VerificationError value) verificationError,
    required TResult Function(_InvalidPhoneNumber value) invalidPhoneNumber,
    required TResult Function(_UnknownError value) unknownError,
  }) {
    return codeRetreivalTimedOut(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_WaitingForUserInput value)? waitingForUserInput,
    TResult Function(_CodeSent value)? codeSent,
    TResult Function(_GotFirebaseUser value)? gotFirebaseUser,
    TResult Function(_Success value)? success,
    TResult Function(_CodeTimedOut value)? codeRetreivalTimedOut,
    TResult Function(_VerificationError value)? verificationError,
    TResult Function(_InvalidPhoneNumber value)? invalidPhoneNumber,
    TResult Function(_UnknownError value)? unknownError,
    required TResult orElse(),
  }) {
    if (codeRetreivalTimedOut != null) {
      return codeRetreivalTimedOut(this);
    }
    return orElse();
  }
}

abstract class _CodeTimedOut implements AuthState {
  const factory _CodeTimedOut() = _$_CodeTimedOut;
}

/// @nodoc
abstract class _$VerificationErrorCopyWith<$Res> {
  factory _$VerificationErrorCopyWith(
          _VerificationError value, $Res Function(_VerificationError) then) =
      __$VerificationErrorCopyWithImpl<$Res>;
  $Res call(
      {FirebaseAuthException firebaseAuthException,
      String? verificationId,
      String? message});
}

/// @nodoc
class __$VerificationErrorCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements _$VerificationErrorCopyWith<$Res> {
  __$VerificationErrorCopyWithImpl(
      _VerificationError _value, $Res Function(_VerificationError) _then)
      : super(_value, (v) => _then(v as _VerificationError));

  @override
  _VerificationError get _value => super._value as _VerificationError;

  @override
  $Res call({
    Object? firebaseAuthException = freezed,
    Object? verificationId = freezed,
    Object? message = freezed,
  }) {
    return _then(_VerificationError(
      firebaseAuthException == freezed
          ? _value.firebaseAuthException
          : firebaseAuthException // ignore: cast_nullable_to_non_nullable
              as FirebaseAuthException,
      verificationId: verificationId == freezed
          ? _value.verificationId
          : verificationId // ignore: cast_nullable_to_non_nullable
              as String?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_VerificationError implements _VerificationError {
  const _$_VerificationError(this.firebaseAuthException,
      {this.verificationId, this.message});

  @override
  final FirebaseAuthException firebaseAuthException;
  @override
  final String? verificationId;
  @override
  final String? message;

  @override
  String toString() {
    return 'AuthState.verificationError(firebaseAuthException: $firebaseAuthException, verificationId: $verificationId, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _VerificationError &&
            (identical(other.firebaseAuthException, firebaseAuthException) ||
                const DeepCollectionEquality().equals(
                    other.firebaseAuthException, firebaseAuthException)) &&
            (identical(other.verificationId, verificationId) ||
                const DeepCollectionEquality()
                    .equals(other.verificationId, verificationId)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(firebaseAuthException) ^
      const DeepCollectionEquality().hash(verificationId) ^
      const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$VerificationErrorCopyWith<_VerificationError> get copyWith =>
      __$VerificationErrorCopyWithImpl<_VerificationError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String msg) loading,
    required TResult Function() waitingForUserInput,
    required TResult Function(String verificationId) codeSent,
    required TResult Function(User user) gotFirebaseUser,
    required TResult Function(User firebaseUser, CustomUser user) success,
    required TResult Function() codeRetreivalTimedOut,
    required TResult Function(FirebaseAuthException firebaseAuthException,
            String? verificationId, String? message)
        verificationError,
    required TResult Function(FirebaseAuthException firebaseAuthException,
            dynamic Function(String) retry, String message)
        invalidPhoneNumber,
    required TResult Function(Object error, StackTrace? stackTrace)
        unknownError,
  }) {
    return verificationError(firebaseAuthException, verificationId, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String msg)? loading,
    TResult Function()? waitingForUserInput,
    TResult Function(String verificationId)? codeSent,
    TResult Function(User user)? gotFirebaseUser,
    TResult Function(User firebaseUser, CustomUser user)? success,
    TResult Function()? codeRetreivalTimedOut,
    TResult Function(FirebaseAuthException firebaseAuthException,
            String? verificationId, String? message)?
        verificationError,
    TResult Function(FirebaseAuthException firebaseAuthException,
            dynamic Function(String) retry, String message)?
        invalidPhoneNumber,
    TResult Function(Object error, StackTrace? stackTrace)? unknownError,
    required TResult orElse(),
  }) {
    if (verificationError != null) {
      return verificationError(firebaseAuthException, verificationId, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_WaitingForUserInput value) waitingForUserInput,
    required TResult Function(_CodeSent value) codeSent,
    required TResult Function(_GotFirebaseUser value) gotFirebaseUser,
    required TResult Function(_Success value) success,
    required TResult Function(_CodeTimedOut value) codeRetreivalTimedOut,
    required TResult Function(_VerificationError value) verificationError,
    required TResult Function(_InvalidPhoneNumber value) invalidPhoneNumber,
    required TResult Function(_UnknownError value) unknownError,
  }) {
    return verificationError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_WaitingForUserInput value)? waitingForUserInput,
    TResult Function(_CodeSent value)? codeSent,
    TResult Function(_GotFirebaseUser value)? gotFirebaseUser,
    TResult Function(_Success value)? success,
    TResult Function(_CodeTimedOut value)? codeRetreivalTimedOut,
    TResult Function(_VerificationError value)? verificationError,
    TResult Function(_InvalidPhoneNumber value)? invalidPhoneNumber,
    TResult Function(_UnknownError value)? unknownError,
    required TResult orElse(),
  }) {
    if (verificationError != null) {
      return verificationError(this);
    }
    return orElse();
  }
}

abstract class _VerificationError implements AuthState {
  const factory _VerificationError(FirebaseAuthException firebaseAuthException,
      {String? verificationId, String? message}) = _$_VerificationError;

  FirebaseAuthException get firebaseAuthException =>
      throw _privateConstructorUsedError;
  String? get verificationId => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$VerificationErrorCopyWith<_VerificationError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$InvalidPhoneNumberCopyWith<$Res> {
  factory _$InvalidPhoneNumberCopyWith(
          _InvalidPhoneNumber value, $Res Function(_InvalidPhoneNumber) then) =
      __$InvalidPhoneNumberCopyWithImpl<$Res>;
  $Res call(
      {FirebaseAuthException firebaseAuthException,
      dynamic Function(String) retry,
      String message});
}

/// @nodoc
class __$InvalidPhoneNumberCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements _$InvalidPhoneNumberCopyWith<$Res> {
  __$InvalidPhoneNumberCopyWithImpl(
      _InvalidPhoneNumber _value, $Res Function(_InvalidPhoneNumber) _then)
      : super(_value, (v) => _then(v as _InvalidPhoneNumber));

  @override
  _InvalidPhoneNumber get _value => super._value as _InvalidPhoneNumber;

  @override
  $Res call({
    Object? firebaseAuthException = freezed,
    Object? retry = freezed,
    Object? message = freezed,
  }) {
    return _then(_InvalidPhoneNumber(
      firebaseAuthException == freezed
          ? _value.firebaseAuthException
          : firebaseAuthException // ignore: cast_nullable_to_non_nullable
              as FirebaseAuthException,
      retry == freezed
          ? _value.retry
          : retry // ignore: cast_nullable_to_non_nullable
              as dynamic Function(String),
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_InvalidPhoneNumber implements _InvalidPhoneNumber {
  const _$_InvalidPhoneNumber(
      this.firebaseAuthException, this.retry, this.message);

  @override
  final FirebaseAuthException firebaseAuthException;
  @override
  final dynamic Function(String) retry;
  @override
  final String message;

  @override
  String toString() {
    return 'AuthState.invalidPhoneNumber(firebaseAuthException: $firebaseAuthException, retry: $retry, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InvalidPhoneNumber &&
            (identical(other.firebaseAuthException, firebaseAuthException) ||
                const DeepCollectionEquality().equals(
                    other.firebaseAuthException, firebaseAuthException)) &&
            (identical(other.retry, retry) ||
                const DeepCollectionEquality().equals(other.retry, retry)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(firebaseAuthException) ^
      const DeepCollectionEquality().hash(retry) ^
      const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$InvalidPhoneNumberCopyWith<_InvalidPhoneNumber> get copyWith =>
      __$InvalidPhoneNumberCopyWithImpl<_InvalidPhoneNumber>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String msg) loading,
    required TResult Function() waitingForUserInput,
    required TResult Function(String verificationId) codeSent,
    required TResult Function(User user) gotFirebaseUser,
    required TResult Function(User firebaseUser, CustomUser user) success,
    required TResult Function() codeRetreivalTimedOut,
    required TResult Function(FirebaseAuthException firebaseAuthException,
            String? verificationId, String? message)
        verificationError,
    required TResult Function(FirebaseAuthException firebaseAuthException,
            dynamic Function(String) retry, String message)
        invalidPhoneNumber,
    required TResult Function(Object error, StackTrace? stackTrace)
        unknownError,
  }) {
    return invalidPhoneNumber(firebaseAuthException, retry, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String msg)? loading,
    TResult Function()? waitingForUserInput,
    TResult Function(String verificationId)? codeSent,
    TResult Function(User user)? gotFirebaseUser,
    TResult Function(User firebaseUser, CustomUser user)? success,
    TResult Function()? codeRetreivalTimedOut,
    TResult Function(FirebaseAuthException firebaseAuthException,
            String? verificationId, String? message)?
        verificationError,
    TResult Function(FirebaseAuthException firebaseAuthException,
            dynamic Function(String) retry, String message)?
        invalidPhoneNumber,
    TResult Function(Object error, StackTrace? stackTrace)? unknownError,
    required TResult orElse(),
  }) {
    if (invalidPhoneNumber != null) {
      return invalidPhoneNumber(firebaseAuthException, retry, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_WaitingForUserInput value) waitingForUserInput,
    required TResult Function(_CodeSent value) codeSent,
    required TResult Function(_GotFirebaseUser value) gotFirebaseUser,
    required TResult Function(_Success value) success,
    required TResult Function(_CodeTimedOut value) codeRetreivalTimedOut,
    required TResult Function(_VerificationError value) verificationError,
    required TResult Function(_InvalidPhoneNumber value) invalidPhoneNumber,
    required TResult Function(_UnknownError value) unknownError,
  }) {
    return invalidPhoneNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_WaitingForUserInput value)? waitingForUserInput,
    TResult Function(_CodeSent value)? codeSent,
    TResult Function(_GotFirebaseUser value)? gotFirebaseUser,
    TResult Function(_Success value)? success,
    TResult Function(_CodeTimedOut value)? codeRetreivalTimedOut,
    TResult Function(_VerificationError value)? verificationError,
    TResult Function(_InvalidPhoneNumber value)? invalidPhoneNumber,
    TResult Function(_UnknownError value)? unknownError,
    required TResult orElse(),
  }) {
    if (invalidPhoneNumber != null) {
      return invalidPhoneNumber(this);
    }
    return orElse();
  }
}

abstract class _InvalidPhoneNumber implements AuthState {
  const factory _InvalidPhoneNumber(FirebaseAuthException firebaseAuthException,
      dynamic Function(String) retry, String message) = _$_InvalidPhoneNumber;

  FirebaseAuthException get firebaseAuthException =>
      throw _privateConstructorUsedError;
  dynamic Function(String) get retry => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$InvalidPhoneNumberCopyWith<_InvalidPhoneNumber> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UnknownErrorCopyWith<$Res> {
  factory _$UnknownErrorCopyWith(
          _UnknownError value, $Res Function(_UnknownError) then) =
      __$UnknownErrorCopyWithImpl<$Res>;
  $Res call({Object error, StackTrace? stackTrace});
}

/// @nodoc
class __$UnknownErrorCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$UnknownErrorCopyWith<$Res> {
  __$UnknownErrorCopyWithImpl(
      _UnknownError _value, $Res Function(_UnknownError) _then)
      : super(_value, (v) => _then(v as _UnknownError));

  @override
  _UnknownError get _value => super._value as _UnknownError;

  @override
  $Res call({
    Object? error = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(_UnknownError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Object,
      stackTrace == freezed
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace?,
    ));
  }
}

/// @nodoc

class _$_UnknownError implements _UnknownError {
  const _$_UnknownError(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace? stackTrace;

  @override
  String toString() {
    return 'AuthState.unknownError(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UnknownError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)) &&
            (identical(other.stackTrace, stackTrace) ||
                const DeepCollectionEquality()
                    .equals(other.stackTrace, stackTrace)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(error) ^
      const DeepCollectionEquality().hash(stackTrace);

  @JsonKey(ignore: true)
  @override
  _$UnknownErrorCopyWith<_UnknownError> get copyWith =>
      __$UnknownErrorCopyWithImpl<_UnknownError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String msg) loading,
    required TResult Function() waitingForUserInput,
    required TResult Function(String verificationId) codeSent,
    required TResult Function(User user) gotFirebaseUser,
    required TResult Function(User firebaseUser, CustomUser user) success,
    required TResult Function() codeRetreivalTimedOut,
    required TResult Function(FirebaseAuthException firebaseAuthException,
            String? verificationId, String? message)
        verificationError,
    required TResult Function(FirebaseAuthException firebaseAuthException,
            dynamic Function(String) retry, String message)
        invalidPhoneNumber,
    required TResult Function(Object error, StackTrace? stackTrace)
        unknownError,
  }) {
    return unknownError(error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String msg)? loading,
    TResult Function()? waitingForUserInput,
    TResult Function(String verificationId)? codeSent,
    TResult Function(User user)? gotFirebaseUser,
    TResult Function(User firebaseUser, CustomUser user)? success,
    TResult Function()? codeRetreivalTimedOut,
    TResult Function(FirebaseAuthException firebaseAuthException,
            String? verificationId, String? message)?
        verificationError,
    TResult Function(FirebaseAuthException firebaseAuthException,
            dynamic Function(String) retry, String message)?
        invalidPhoneNumber,
    TResult Function(Object error, StackTrace? stackTrace)? unknownError,
    required TResult orElse(),
  }) {
    if (unknownError != null) {
      return unknownError(error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_WaitingForUserInput value) waitingForUserInput,
    required TResult Function(_CodeSent value) codeSent,
    required TResult Function(_GotFirebaseUser value) gotFirebaseUser,
    required TResult Function(_Success value) success,
    required TResult Function(_CodeTimedOut value) codeRetreivalTimedOut,
    required TResult Function(_VerificationError value) verificationError,
    required TResult Function(_InvalidPhoneNumber value) invalidPhoneNumber,
    required TResult Function(_UnknownError value) unknownError,
  }) {
    return unknownError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_WaitingForUserInput value)? waitingForUserInput,
    TResult Function(_CodeSent value)? codeSent,
    TResult Function(_GotFirebaseUser value)? gotFirebaseUser,
    TResult Function(_Success value)? success,
    TResult Function(_CodeTimedOut value)? codeRetreivalTimedOut,
    TResult Function(_VerificationError value)? verificationError,
    TResult Function(_InvalidPhoneNumber value)? invalidPhoneNumber,
    TResult Function(_UnknownError value)? unknownError,
    required TResult orElse(),
  }) {
    if (unknownError != null) {
      return unknownError(this);
    }
    return orElse();
  }
}

abstract class _UnknownError implements AuthState {
  const factory _UnknownError(Object error, StackTrace? stackTrace) =
      _$_UnknownError;

  Object get error => throw _privateConstructorUsedError;
  StackTrace? get stackTrace => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$UnknownErrorCopyWith<_UnknownError> get copyWith =>
      throw _privateConstructorUsedError;
}
