import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_firebase_phone_auth/auth/logic/custom_auth_service.dart';
import 'package:riverpod_firebase_phone_auth/auth/logic/firebase_phone_auth_service.dart';
import 'auth/logic/auth_state.dart';
import 'auth/logic/auth_state_notifier.dart';

final firebaseInitProvider = FutureProvider((ref) => Firebase.initializeApp());
final firebaseUserProvider = StreamProvider(
  (ref) => FirebaseAuth.instance.authStateChanges(),
);

final firebaseAuthProvider = Provider((ref) => FirebaseAuth.instance);

final phoneVerificationStateProvider =
    StateNotifierProvider<AuthStateNotifier, AuthState>(
  (ref) {
    final firebaseAuth = ref.watch(firebaseAuthProvider);
    final authService = ref.watch(customAuthServiceProvider);
    return AuthStateNotifier(
      phoneAuthService: FirebasePhoneAuthService(firebaseAuth: firebaseAuth),
      customAuthService: authService,
    );
  },
);

final themeProvider = StateProvider((ref) => ThemeMode.light);

final userProvider = Provider<User>(
  (ref) {
    final authState = ref.watch(phoneVerificationStateProvider);
    return authState.maybeWhen(
      orElse: () => throw '${authState.runtimeType} -  User not logged in.',
      success: (firebaseUser, user) => firebaseUser,
      gotFirebaseUser: (user) => user,
    );
  },
);

final customAuthServiceProvider = Provider(
  (ref) => OurAuthService(),
);
