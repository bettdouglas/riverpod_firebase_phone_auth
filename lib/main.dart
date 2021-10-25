import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:random_color_scheme/random_color_scheme.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:riverpod_firebase_phone_auth/auth/view/generic_error_widget.dart';
import 'package:logging/logging.dart';
import 'package:riverpod_firebase_phone_auth/logging/logging.dart';
import 'providers.dart';
import 'auth/view/auth_page.dart';

void main() {
  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen((LogRecord rec) {
    final msg =
        '${rec.loggerName}: ${rec.level.name}: ${rec.time}: ${rec.message}';
    log(msg);
  });
  runApp(const ProviderScope(
    child: App(),
    observers: [ProviderLogger()],
  ));
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (_, __, ___) => Consumer(
        builder: (context, watch, child) {
          final themeMode = watch(themeProvider);
          late ColorScheme colorScheme;
          if (themeMode.state == ThemeMode.dark) {
            colorScheme = randomColorSchemeDark(shouldPrint: false);
          } else {
            colorScheme = randomColorSchemeLight(shouldPrint: false);
          }
          SystemChrome.setSystemUIOverlayStyle(
            SystemUiOverlayStyle(
              statusBarColor: colorScheme.primary,
              statusBarBrightness: colorScheme.brightness,
            ),
          );
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              colorScheme: colorScheme,
              brightness: colorScheme.brightness,
              appBarTheme: AppBarTheme(
                backgroundColor: colorScheme.primary,
              ),
              textTheme: GoogleFonts.latoTextTheme(),
            ),
            home: const EntryPoint(),
          );
        },
      ),
    );
  }
}

class EntryPoint extends ConsumerWidget {
  const EntryPoint({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final firebaseState = watch(firebaseInitProvider);
    return firebaseState.when(
      data: (_) => AuthPage(
        whenAuthentcated: (user) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Text(
              'Welcome ${watch(userProvider).phoneNumber!}',
              style: Theme.of(context)
                  .textTheme
                  .headline4!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
      loading: () => const SplashScreen(),
      error: (err, _) => Scaffold(
        body: ErrStWidget(
          error: err,
          message: 'Failed to initialize firebase app',
          retryWidget: ElevatedButton(
            child: Container(
              child: const Text('Try Again'),
              alignment: Alignment.center,
            ),
            onPressed: () => context.refresh(firebaseInitProvider),
          ),
        ),
      ),
    );
  }
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: CircularProgressIndicator()),
    );
  }
}
