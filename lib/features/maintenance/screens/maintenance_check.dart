// ignore: unused_import
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:gitcentral/features/maintenance/notifiers/maintenance_check_notifier.dart';
import 'package:gitcentral/features/maintenance/notifiers/maintenance_check_state.dart';
import 'package:gitcentral/features/maintenance/screens/maintenance_mode.page.dart';
import 'package:gitcentral/shared/services/global_messenger/global_messenger_event.dart';
import 'package:gitcentral/shared/services/global_messenger/global_messenger_service.dart';
import 'package:gitcentral/shared/utils/constants/constants.dart';
import 'package:gitcentral/shared/utils/custom_widgets/custom_snackbars.dart';
import 'package:gitcentral/shared/utils/helpers/debouncer.dart';

class MaintenanceCheck extends ConsumerStatefulWidget {
  final Widget child;
  const MaintenanceCheck({
    super.key,
    required this.child,
  });

  @override
  ConsumerState<MaintenanceCheck> createState() => _MaintenanceCheckState();
}

class _MaintenanceCheckState extends ConsumerState<MaintenanceCheck> {
  GlobalMessengerService get globalMessenger =>
      ref.read(globalMessengerServiceProvider);

  @override
  void initState() {
    globalMessenger.messenger.stream.listen(
      (event) async {
        if (event is OperationRestored &&
            ref.read(globalMessengerServiceProvider).isSnackbarShowing) {
          scaffoldKey.currentState?.clearSnackBars();
          ref.read(globalMessengerServiceProvider).updateSnackbarStatus(false);
        }
        if (event is NoNetwork) {
          scaffoldKey.currentState?.clearSnackBars();
          await debouncer();
          if (!mounted) return;
          scaffoldKey.currentState?.showSnackBar(
            showPersistentSnackbar(
              ref,
              context,
              'You have no internet connection.',
            ),
          );
          ref.read(globalMessengerServiceProvider).updateSnackbarStatus(true);
        }
        if (event is MaintenanceEvent) {
          ref
              .read(maintenanceCheckNotifierProvider.notifier)
              .showMaintenanceMode();
        }
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(maintenanceCheckNotifierProvider);

    ref.listen(maintenanceCheckNotifierProvider, (previous, next) {
      if (next.status is MaintenanceMode) {
        /// Remove user's current page until this page
        Navigator.of(navigatorKey.currentContext!).popUntil(
          (route) => route.isFirst,
        );
      }
    });
    return Scaffold(
        body: Stack(
      children: [
        if (state.status is MaintenanceMode) const MaintenanceModePage(),
        if (state.status is Operational) widget.child,
      ],
    ));
  }
}
