import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'verify_phone_states.freezed.dart';

@freezed
class VerifyPhoneStates with _$VerifyPhoneStates {
  const factory VerifyPhoneStates.completed(PhoneAuthCredential credential) =
      _Completed;
  const factory VerifyPhoneStates.failed(FirebaseAuthException exception) =
      _Failed;
  const factory VerifyPhoneStates.codeSent(
    String verificationId,
    int? resendToken,
  ) = _CodeSent;
  const factory VerifyPhoneStates.codeRetrievalTimeout(String verificationId) =
      _CodeRetrievalTimeout;
}


