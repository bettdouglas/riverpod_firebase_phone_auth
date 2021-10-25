import 'package:logging/logging.dart';

mixin LoggerMixin {
  void log(Object? message, [Level? level]) {
    final logger = Logger(runtimeType.toString());
    if (level != null) {
      logger.log(level, message);
    } else {
      logger.info(message);
    }
  }

  void shout(
    Object? msg, [
    Object? error,
    StackTrace? stackTrace,
  ]) {
    final logger = Logger(runtimeType.toString());
    logger.shout(msg, error, stackTrace);
  }

  void info(
    Object? message, [
    Object? error,
    StackTrace? stackTrace,
  ]) {
    final logger = Logger(runtimeType.toString());
    logger.info(message, error, stackTrace);
  }
}
