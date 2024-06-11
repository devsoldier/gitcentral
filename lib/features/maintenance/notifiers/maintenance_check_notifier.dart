// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:gitcentral/features/maintenance/notifiers/maintenance_check_state.dart';
// import 'package:gitcentral/shared/utils/helpers/debouncer.dart';

// final maintenanceCheckNotifierProvider = NotifierProvider.autoDispose<
//     MaintenanceCheckNotifier,
//     MaintenanceCheckState>(MaintenanceCheckNotifier.new);

// class MaintenanceCheckNotifier
//     extends AutoDisposeNotifier<MaintenanceCheckState> {
//   @override
//   MaintenanceCheckState build() {
//     return MaintenanceCheckState(status: const Operational());
//   }

//   // TODO: Force update can be added here

//   void showMaintenanceMode() async {
//     await debouncer();
//     state = state.copyWith(status: const MaintenanceMode());
//   }
// }
