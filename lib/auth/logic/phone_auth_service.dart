import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'verify_phone_states.dart';

abstract class PhoneAuthService {
  User? get currentUser;
  Stream<User?> get authStateChanges;
  Future<void> verifyPhoneNumber(String phone);
  Stream<VerifyPhoneStates> get phoneStatesStream;
  Future<UserCredential> signInWithCredential(PhoneAuthCredential credential);
  Future<void> signOut();
}
