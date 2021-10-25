import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:riverpod_firebase_phone_auth/auth/logic/custom_auth_service.dart';
import 'package:riverpod_firebase_phone_auth/auth/logic/phone_auth_service.dart';
import 'package:riverpod_firebase_phone_auth/common/class_logger.dart';
import 'verify_phone_states.dart';
import 'auth_state.dart';

class AuthStateNotifier extends StateNotifier<AuthState> with LoggerMixin {
  AuthStateNotifier({
    required this.phoneAuthService,
    required this.customAuthService,
  }) : super(const AuthState.loading('Checking authentication state')) {
    _authStateStreamSub = phoneAuthService.authStateChanges.listen((user) {
      if (user != null) {
        // name needs to be registered
        state = checkUserState(user);
      } else {
        state = const AuthState.initial();
      }
    });
  }

  late StreamSubscription<User?> _authStateStreamSub;
  late StreamSubscription<VerifyPhoneStates> verifyPhoneStreamSub;
  final CustomAuthService customAuthService;
  final PhoneAuthService phoneAuthService;

  Future verifyPhoneNumber(String phone) async {
    final canVerify = state.maybeWhen(
      orElse: () => false,
      initial: () => true,
      waitingForUserInput: () => true,
      invalidPhoneNumber: (_, __, ___) => true,
    );
    if (canVerify) {
      state = const AuthState.loading('Verifying phone number');
      phoneAuthService.verifyPhoneNumber(phone);
      await for (var verifyState in phoneAuthService.phoneStatesStream) {
        verifyState.when(
          completed: (PhoneAuthCredential credential) async {
            // create entry in vixens portal
            final userCredentials =
                await phoneAuthService.signInWithCredential(credential);
            state = AuthState.gotFirebaseUser(userCredentials.user!);
            // create user token if not exists
          },
          failed: (FirebaseAuthException e) {
            if (e.code == 'invalid-phone-number') {
              state = AuthState.invalidPhoneNumber(
                e,
                verifyPhoneNumber,
                'The provided phone number is not valid.',
              );
            } else {
              state = AuthState.verificationError(
                e,
                message:
                    'Another error occured ${e.code} ${e.message}\n${e.stackTrace.toString()}',
              );
            }
          },
          codeSent: (String verificationId, int? resendToken) {
            state = AuthState.codeSent(verificationId);
          },
          codeRetrievalTimeout: (String verificationId) {
            if (phoneAuthService.currentUser == null) {
              state = const AuthState.codeRetreivalTimedOut();
            }
          },
        );
      }
    }
  }

  void get acceptToUsePhone {
    state = const AuthState.waitingForUserInput();
  }

  void get retry {
    state = const AuthState.waitingForUserInput();
  }

  Future verifyCode(String smsCode, String verificationId) async {
    final credential = PhoneAuthProvider.credential(
      verificationId: verificationId,
      smsCode: smsCode,
    );
    try {
      state = AuthState.loading('Checking if SMS Code $smsCode is valid');
      final userCredential =
          await phoneAuthService.signInWithCredential(credential);
      info(userCredential.user);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'invalid-verification-code') {
        state = AuthState.verificationError(
          e,
          message: 'The code you entered is invalid',
          verificationId: verificationId,
        );
      } else {
        state = AuthState.verificationError(
          e,
          message:
              'Another error occured ${e.message}\n${e.stackTrace.toString()}',
        );
      }
    }
  }

  Future reEnterVerificationCode(String verificationId) async {
    state = AuthState.codeSent(verificationId);
  }

  Future get logout async {
    await phoneAuthService.signOut();
    state = const AuthState.initial();
  }

  Future registerUserName(
    User user,
    String name,
  ) async {
    info('Updating User(${user.uid}) with name $name');
    await user.updateDisplayName(name);
    final result = await customAuthService.registerFirebaseUser(user);
    await result.when(
      ok: (customUser) async {},
      error: (err) async {
        await user.updateDisplayName(null);
      },
    );
    info(phoneAuthService.currentUser);
    state = checkUserState(phoneAuthService.currentUser!);
  }

  AuthState checkUserState(User user) {
    if (user.displayName == null || user.displayName!.isEmpty) {
      return state = AuthState.gotFirebaseUser(user);
    } else {
      return state = AuthState.success(
        user,
        CustomUser(
          name: user.displayName!,
          firebaseUserId: user.uid,
          phoneNumber: user.phoneNumber!,
          firebaseUserToken: null,
        ),
      );
    }
  }

  @override
  void dispose() {
    _authStateStreamSub.cancel();
    super.dispose();
  }
}
