import 'package:riverpod_firebase_phone_auth/common/class_logger.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// var consoleLogger = Logger(
//   printer: PrettyPrinter(),
//   output: LogConsole.wrap(innerOutput: ConsoleOutput()),
//   filter: ProductionFilter(),
// );

class ProviderLogger extends ProviderObserver with LoggerMixin {
  const ProviderLogger();
  @override
  void didUpdateProvider(ProviderBase provider, Object? newValue) {
    info('''
{
  "provider": "${provider.name ?? provider.runtimeType}",
  "newValue": "$newValue"
}''');
    super.didUpdateProvider(provider, newValue);
  }
}
