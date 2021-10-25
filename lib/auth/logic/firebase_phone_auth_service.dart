import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'phone_auth_service.dart';
import 'verify_phone_states.dart';

class FirebasePhoneAuthService implements PhoneAuthService {
  final FirebaseAuth firebaseAuth;
  FirebasePhoneAuthService({
    required this.firebaseAuth,
  }) {
    streamController = StreamController();
  }

  late StreamController<VerifyPhoneStates> streamController;

  @override
  Stream<VerifyPhoneStates> get phoneStatesStream =>
      streamController.stream.asBroadcastStream();

  @override
  Future<void> verifyPhoneNumber(String phone) async {
    try {
      await firebaseAuth.verifyPhoneNumber(
        phoneNumber: phone,
        verificationCompleted: (PhoneAuthCredential credential) {
          streamController.add(VerifyPhoneStates.completed(credential));
        },
        verificationFailed: (FirebaseAuthException exception) {
          streamController.add(VerifyPhoneStates.failed(exception));
        },
        codeSent: (verificationId, resendToken) {
          streamController.add(
            VerifyPhoneStates.codeSent(verificationId, resendToken),
          );
        },
        codeAutoRetrievalTimeout: (verificationId) {
          streamController.add(
            VerifyPhoneStates.codeRetrievalTimeout(verificationId),
          );
        },
      );
    } catch (e, st) {
      streamController.add(VerifyPhoneStates.error(e, st));
    }
  }

  @override
  Stream<User?> get authStateChanges => firebaseAuth.authStateChanges();

  @override
  User? get currentUser => firebaseAuth.currentUser;

  @override
  Future<UserCredential> signInWithCredential(PhoneAuthCredential credential) {
    return firebaseAuth.signInWithCredential(credential);
  }

  @override
  Future<void> signOut() {
    return firebaseAuth.signOut();
  }
}
