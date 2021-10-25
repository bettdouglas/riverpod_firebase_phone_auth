import 'package:firebase_auth/firebase_auth.dart';
import 'package:riverpod_firebase_phone_auth/auth/logic/auth_state.dart';
import 'package:riverpod_firebase_phone_auth/common/result/result.dart';

abstract class CustomAuthService {
  Future<Result<CustomUser, GetUserException>> getUser(String id);
  Future<Result<CustomUser, RegisterUserExeption>> registerFirebaseUser(
      User user);
}

class RegisterUserExeption implements Exception {
  final Object error;
  RegisterUserExeption(this.error);
}

class GetUserException implements Exception {
  final Object error;
  GetUserException(this.error);
}

class OurAuthService implements CustomAuthService {
  OurAuthService();

  @override
  Future<Result<CustomUser, GetUserException>> getUser(String id) {
    throw UnimplementedError();
  }

  @override
  Future<Result<CustomUser, RegisterUserExeption>> registerFirebaseUser(
    User user,
  ) async {
    throw UnimplementedError();
    // try {
    //   final request = RegisterUserRequest(
    //     firebaseUid: user.uid,
    //   );
    //   final response = await userServiceClient.registerUser(request);
    //   final customUser = CustomUser(
    //     name: response.name,
    //     firebaseUserId: response.firebaseUid,
    //     phoneNumber: response.phone,
    //     firebaseUserToken: null,
    //     userId: response.id,
    //   );
    //   return Result.ok(customUser);
    // } catch (e) {
    //   return Result.error(RegisterUserExeption(e));
    // }
  }
}
