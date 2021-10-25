import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_auth_mocks/firebase_auth_mocks.dart';

import 'package:riverpod_firebase_phone_auth/auth/logic/phone_auth_service.dart';
import 'package:riverpod_firebase_phone_auth/auth/logic/verify_phone_states.dart';

class FakePhoneAuthService implements PhoneAuthService {
  final MockFirebaseAuth mockFirebaseAuth;
  FakePhoneAuthService({
    required this.mockFirebaseAuth,
    required this.wantedStates,
  }) {
    streamController = StreamController();
  }
  late StreamController<VerifyPhoneStates> streamController;
  final Stream<VerifyPhoneStates> wantedStates;

  @override
  Stream<User?> get authStateChanges => mockFirebaseAuth.authStateChanges();

  @override
  User? get currentUser => mockFirebaseAuth.currentUser;

  @override
  Stream<VerifyPhoneStates> get phoneStatesStream => streamController.stream;

  @override
  Future<UserCredential> signInWithCredential(PhoneAuthCredential credential) {
    return mockFirebaseAuth.signInWithCredential(credential);
  }

  @override
  Future<void> signOut() {
    return mockFirebaseAuth.signOut();
  }

  @override
  Future<void> verifyPhoneNumber(String phone) async {
    streamController.addStream(wantedStates);
    return;
  }
}
