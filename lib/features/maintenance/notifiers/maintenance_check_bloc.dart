import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gitcentral/features/maintenance/notifiers/maintenance_check_state.dart';
import 'package:gitcentral/shared/utils/helpers/debouncer.dart';

class MaintenanceCheckBloc
    extends Bloc<MaintenanceCheckStatus, MaintenanceCheckState> {
  MaintenanceCheckBloc() : super(MaintenanceCheckState()) {
    // on<MaintenanceCheckStatus>((event, emit) {});
    on<MaintenanceMode>(showMaintenanceMode);
  }

  void showMaintenanceMode(
    MaintenanceCheckStatus event,
    Emitter<MaintenanceCheckState> emit,
  ) async {
    await debouncer();
    emit(state.copyWith(status: const MaintenanceMode()));
  }
}
