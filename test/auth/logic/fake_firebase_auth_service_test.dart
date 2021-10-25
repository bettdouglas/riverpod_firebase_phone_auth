import 'package:firebase_auth_mocks/firebase_auth_mocks.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:riverpod_firebase_phone_auth/auth/logic/fake_firebase_phone_auth_service.dart';
import 'package:riverpod_firebase_phone_auth/auth/logic/verify_phone_states.dart';

void main() {
  group('Initial streams', () {
    test('should pick initial stream', () {
      final desired = [
        const VerifyPhoneStates.codeSent('verificationId', 1),
        const VerifyPhoneStates.codeRetrievalTimeout('verificationId'),
      ];
      final stream = Stream.fromIterable(desired);

      final service = FakePhoneAuthService(
        mockFirebaseAuth: MockFirebaseAuth(signedIn: false),
        wantedStates: stream,
      );
      service.verifyPhoneNumber('');

      expect(service.phoneStatesStream, emitsInOrder(desired));
    });
  });
}
