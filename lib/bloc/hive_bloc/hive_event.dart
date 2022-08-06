part of 'hive_bloc.dart';

@freezed
class HiveEvent with _$HiveEvent {
  const factory HiveEvent.addToHive(Employee employee) = _AddToHive;
  const factory HiveEvent.removeFromHive() = _RemoveFromHive;
  const factory HiveEvent.fetchFromHive() = _FetchFromHive;
}