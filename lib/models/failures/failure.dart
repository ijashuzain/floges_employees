import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart';

@freezed
class Failure with _$Failure {
  const factory Failure.client() = _ClientFailure;
  const factory Failure.server() = _ServerFailure;
}
