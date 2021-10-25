import 'package:uuid/uuid.dart';

String get uuid {
  return const Uuid().v4();
}
