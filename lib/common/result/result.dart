import 'package:freezed_annotation/freezed_annotation.dart';

part 'result.freezed.dart';

@freezed
class Result<T, E> with _$Result<T, E> {
  const factory Result.ok(T data) = _Ok;
  const factory Result.error(E err) = _Error;
}
