import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'auth_state.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;
  const factory AuthState.loading(String msg) = _Loading;

  /// when waiting for user to enter phone number
  const factory AuthState.waitingForUserInput() = _WaitingForUserInput;

  /// when the code has been sent to the user
  const factory AuthState.codeSent(String verificationId) = _CodeSent;

  /// when the user successfully signs in
  const factory AuthState.gotFirebaseUser(
    User user,
  ) = _GotFirebaseUser;

  /// if you're planning to intergrate an external backend with a custom user model
  const factory AuthState.success(User firebaseUser, CustomUser user) =
      _Success;

  /// when firebase SMS auto-retrieval times out
  const factory AuthState.codeRetreivalTimedOut() = _CodeTimedOut;

  /// when an error occurred during phone number verification.
  const factory AuthState.verificationError(
    FirebaseAuthException firebaseAuthException, {
    String? verificationId,
    String? message,
  }) = _VerificationError;

  /// when an invalid-phone-number error occurs during phone number verification
  const factory AuthState.invalidPhoneNumber(
    FirebaseAuthException firebaseAuthException,
    Function(String) retry,
    String message,
  ) = _InvalidPhoneNumber;
  const factory AuthState.unknownError(Object error, StackTrace? stackTrace) =
      _UnknownError;
}

class CustomUser {
  CustomUser({
    required this.name,
    required this.firebaseUserId,
    required this.phoneNumber,
    required this.firebaseUserToken,
    this.userId,
  });
  factory CustomUser.fromJson(String source) =>
      CustomUser.fromMap(json.decode(source));
  factory CustomUser.fromMap(Map<String, dynamic> map) {
    return CustomUser(
      name: map['name'],
      firebaseUserId: map['firebaseUserId'],
      phoneNumber: map['phoneNumber'],
      firebaseUserToken: map['firebaseUserToken'],
      userId: map['userId'],
    );
  }
  final String name;
  final String firebaseUserId;
  final String phoneNumber;
  final String? firebaseUserToken;
  final String? userId;

  CustomUser copyWith({
    String? name,
    String? firebaseUserId,
    String? phoneNumber,
    String? firebaseUserToken,
    String? userId,
  }) {
    return CustomUser(
      name: name ?? this.name,
      firebaseUserId: firebaseUserId ?? this.firebaseUserId,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      firebaseUserToken: firebaseUserToken ?? this.firebaseUserToken,
      userId: userId ?? this.userId,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'firebaseUserId': firebaseUserId,
      'phoneNumber': phoneNumber,
      'firebaseUserToken': firebaseUserToken,
      'userId': userId,
    };
  }

  String toJson() => json.encode(toMap());
}
