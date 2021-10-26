# riverpod_firebase_phone_auth

A new Flutter project template showing how to handle mobile authentication using Firebase and Riverpod. 

### Packages Used
 - Freezed - To generate union types that handle the various AuthStates
 - GoogleFonts - To use any font easily from fonts.google.com
 - responsive_sizer - For sizing purposes
 - flutter_typeahead - To implement the countries typeahead
 - country_list_pick - to flag assets and names for countries typeahead
 - firebase_core and firebase_auth

## About 
This project mainly uses freezed union types to implement the various states which most Login With Mobile applications use. 
If you don't know about freezed, go to the package [freezed doc](https://pub.dev/packages/freezed). The author has awesome docs, then find yourself a use case and keep freezing. 

So when registering with phone, there are a couple of states where the register with phone could be in.
    - Initial e.g welcome screen
    - Page where the user enters the phone number.
    - Loading i.e prompting for SMS code/Checking if SMS CODE is valid
    - SmsCode has been sent to the users device i.e show code input screen
    - SMS has been validated.
    - SMS code is invalid.
    - Error - Some other error happened
  
  What this template mainly does is handle these various states which could happen during mobile signup using union types and then maps the states into widgets.

  ### The various authentication states 
  ```dart
@freezed
class AuthState with _$AuthState {
  /// Welcome page/User has not entered the phone number
  const factory AuthState.initial() = _Initial;

  /// When something is happening. 
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

  ```
In our view, we then read the authentication state and map the various states to widgets which need to be shown depending on the state. No if statements, just pure functional transformation. Thanks to [freezed](https://pub.dev/packages/freezed)

```dart
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final authState = watch(phoneVerificationStateProvider);
    final authStateNotifier = watch(phoneVerificationStateProvider.notifier);
    return authState.when(
      initial: () => WelcomePage(
        onAcceptButtonPressed: () {
          authStateNotifier.acceptToUsePhone;
        },
      ),
      loading: (msg) => LoadingWidget(msg: msg),
      waitingForUserInput: () => PhoneInputWidget(
        verifyFunction: (validatedPhone) {
          authStateNotifier.verifyPhoneNumber(validatedPhone);
        },
      ),
      codeSent: (verificationId) => SMSCodeInputWidget(
        onTap: (smsCode) {
          authStateNotifier.verifyCode(smsCode, verificationId);
        },
      ),
      gotFirebaseUser: (user) => whenAuthentcated(user),
      success: (firebaseUser, customUser) => whenAuthentcated(firebaseUser),
      codeRetreivalTimedOut: () => CodeRetrievalTimedOutWidget(
        onTryAgain: () => authStateNotifier.retry,
      ),
      verificationError: (_, verificationId, msg) => InvalidCodeWidget(
        verificationId: verificationId,
        invalidCodeMsg: msg,
        onEnterNewCode: () {
          if (verificationId != null) {
            authStateNotifier.reEnterVerificationCode(verificationId);
          }
        },
        onUseDifferentPhone: () => authStateNotifier.retry,
      ),
      invalidPhoneNumber: (_, retryFn, _) => InvalidPhoneNumberWidget(
        onChangePhoneNumber: () {
          authStateNotifier.retry;
        },
      ),
      unknownError: (error, stackTrace) => GenericErrorWidget(
        error: error,
        message: 'Unknown Error occured',
        retryWidget: ElevatedButton(
          onPressed: () {
            authStateNotifier.retry;
          },
          child: Container(
            child: const Text('Start again'),
            alignment: Alignment.center,
            width: Adaptive.w(40),
          ),
        ),
      ),
    );
  }
```

## Steps to use the template
1. Clone the repository and rename the package to what you want it called. 
``` flutter pub run change_app_package_name:main com.new.package.name ```
2. run ```flutter create --org com.new.package.name ```
4. Proceed to setup Firebase as per the instructions on [FlutterFire](https://firebase.flutter.dev/docs/overview)
5. Ensure phone authentication is enabled in firebase console for your project
3. For android ensure you've enabled SafetyNet [here](https://firebase.google.com/docs/auth/android/phone-auth)
4. Download the google-services.json file into android/app
5. Run the app.

## Issues
### Known Issues
- Not tested on iOS
- Tests not written

### Unknown Issues
If you encounter any issues running the example, feel free to open an issue.
