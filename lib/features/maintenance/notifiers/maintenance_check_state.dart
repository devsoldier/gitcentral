import 'package:freezed_annotation/freezed_annotation.dart';

part 'maintenance_check_state.freezed.dart';

@freezed
abstract class MaintenanceCheckState with _$MaintenanceCheckState {
  factory MaintenanceCheckState({
    @Default(MaintenanceCheckStatus.checking())
    final MaintenanceCheckStatus? status,
  }) = _MaintenanceCheckState;
}

@freezed
abstract class MaintenanceCheckStatus with _$MaintenanceCheckStatus {
  const factory MaintenanceCheckStatus.checking() = Checking;
  const factory MaintenanceCheckStatus.operational() = Operational;
  const factory MaintenanceCheckStatus.maintenanceMode() = MaintenanceMode;
  // TODO: app outdated status
}
