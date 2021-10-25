import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:riverpod_firebase_phone_auth/auth/logic/auth_state.dart';
import 'package:riverpod_firebase_phone_auth/common/class_logger.dart';
import 'package:riverpod_firebase_phone_auth/providers.dart';
import 'generic_error_widget.dart';
import 'phone_entry_widget.dart';
import 'validate_phone_code.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({
    Key? key,
    required this.whenAuthentcated,
  }) : super(key: key);

  final Widget Function(User) whenAuthentcated;

  @override
  Widget build(BuildContext context) {
    return ProviderListener<AuthState>(
      provider: phoneVerificationStateProvider,
      onChange: (context, state) {
        state.maybeWhen(
          orElse: () => null,
          gotFirebaseUser: (user) async {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Row(
                  children: [
                    const Icon(Icons.check, color: Colors.white),
                    const SizedBox(width: 8),
                    Expanded(child: Text(user.uid)),
                  ],
                ),
              ),
            );
          },
          success: (firebaseUser, customUser) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Row(
                  children: [
                    const Icon(Icons.check, color: Colors.white),
                    const SizedBox(width: 8),
                    Expanded(child: Text(customUser.toJson())),
                  ],
                ),
              ),
            );
          },
          codeSent: (_) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Row(
                  children: const [
                    Icon(Icons.check, color: Colors.white),
                    SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        'We\'ve sent a code sent to your phone. Wait for the message',
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
      child: AuthView(
        whenAuthentcated: whenAuthentcated,
      ),
    );
  }
}

class AuthView extends ConsumerWidget with LoggerMixin {
  const AuthView({
    Key? key,
    required this.whenAuthentcated,
  }) : super(key: key);

  final Widget Function(User) whenAuthentcated;

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final authState = watch(phoneVerificationStateProvider);
    final authStateNotifier = watch(phoneVerificationStateProvider.notifier);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Phone Registration'),
        actions: [
          IconButton(
            onPressed: () {
              // LogConsole.openLogConsole(context);
            },
            icon: const Icon(Icons.bug_report),
          ),
          IconButton(
            onPressed: () {
              authStateNotifier.logout;
            },
            icon: const Icon(Icons.logout_outlined),
          ),
        ],
      ),
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(8.0),
        child: authState.when(
          initial: () => WelcomePage(
            onSignInButtonAccepted: () {
              authStateNotifier.acceptToUsePhone;
            },
          ),
          loading: (msg) => Column(
            children: [
              Text(
                msg,
                style: Theme.of(context)
                    .textTheme
                    .headline4!
                    .copyWith(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: Adaptive.h(20)),
              const CircularProgressIndicator(),
            ],
          ),
          waitingForUserInput: () => PhoneInputWidget(
            verifyFunction: (validatedPhone) {
              authStateNotifier.verifyPhoneNumber(validatedPhone);
            },
          ),
          codeSent: (verificationId) => ValidatePhoneCode(
            onTap: (smsCode) {
              authStateNotifier.verifyCode(smsCode, verificationId);
            },
          ),
          gotFirebaseUser: (user) => whenAuthentcated(user),
          success: (firebaseUser, customUser) => whenAuthentcated(firebaseUser),
          codeRetreivalTimedOut: () => ErrStWidget(
            error: 'Timed-out when retreiving code',
            message: 'Code Retreival Timed out',
            retryWidget: ElevatedButton(
              onPressed: () {
                authStateNotifier.retry;
              },
              child: const Text('Try Again'),
            ),
          ),
          verificationError: (firebaseException, verificationId, msg) =>
              ErrStWidget(
            error: 'Verification Error',
            message: msg ?? 'Verification Code error',
            retryWidget: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                if (verificationId != null)
                  ElevatedButton(
                    onPressed: () {
                      authStateNotifier.reEnterVerificationCode(verificationId);
                    },
                    child: const Text('Enter new code'),
                  ),
                ElevatedButton(
                  onPressed: () {
                    authStateNotifier.retry;
                  },
                  child: Container(
                    child: const Text('Register with different phone'),
                    alignment: Alignment.center,
                    width: Adaptive.w(40),
                  ),
                )
              ],
            ),
          ),
          invalidPhoneNumber: (firebaseExc, retryFn, _) => ErrStWidget(
            error: 'Failed to retrive verification code',
            message: 'Failed to retrive verification code',
            retryWidget: Row(
              children: [
                ElevatedButton(
                  onPressed: () {
                    authStateNotifier.retry;
                  },
                  child: const Text('Change Phone number'),
                ),
              ],
            ),
          ),
          unknownError: (error, stackTrace) => ErrStWidget(
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
        ),
      ),
    );
  }
}

class WelcomePage extends StatelessWidget {
  const WelcomePage({
    Key? key,
    required this.onSignInButtonAccepted,
  }) : super(key: key);

  final VoidCallback? onSignInButtonAccepted;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Welcome',
          style: Theme.of(context)
              .textTheme
              .bodyText1!
              .copyWith(fontSize: Adaptive.sp(25), fontWeight: FontWeight.bold),
        ),
        SizedBox(height: Adaptive.h(2)),
        Text(
          'To continue, you\'ll have to sign in with your mobile number',
          style: Theme.of(context)
              .textTheme
              .headline4!
              .copyWith(fontWeight: FontWeight.bold, fontSize: Adaptive.sp(20)),
        ),
        const Spacer(),
        Container(
          alignment: Alignment.center,
          height: 10.h,
          child: ElevatedButton(
            onPressed: onSignInButtonAccepted,
            child: const Text('Sign in with your mobile number'),
          ),
        ),
        SizedBox(height: 15.h)
      ],
    );
  }
}

class UsernameEntryWidget extends StatelessWidget {
  UsernameEntryWidget({
    Key? key,
    required this.onRegisterUsername,
  }) : super(key: key);

  final Function(String) onRegisterUsername;

  final _formKey = GlobalKey<FormState>();
  final _tec = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: Adaptive.h(2)),
          Text(
            'Enter your username below to complete registration',
            style: Theme.of(context).textTheme.bodyText1!.copyWith(
                fontSize: Adaptive.sp(18), fontWeight: FontWeight.bold),
          ),
          SizedBox(height: Adaptive.h(2)),
          TextFormField(
            controller: _tec,
            validator: (str) {
              if (str == null) {
                return 'Please enter your names';
              } else {
                if (str.length < 3) {
                  return 'Please enter your valid names';
                } else {
                  return null;
                }
              }
            },
          ),
          SizedBox(height: Adaptive.h(2)),
          Align(
            alignment: Alignment.centerRight,
            child: ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  onRegisterUsername(_tec.text);
                }
              },
              child: Container(
                alignment: Alignment.center,
                width: Adaptive.w(30),
                child: const Text('Register'),
              ),
            ),
          ),
          SizedBox(height: 3.h),
        ],
      ),
    );
  }
}
