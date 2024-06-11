// ignore: unused_import
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import 'package:gitcentral/features/maintenance/notifiers/maintenance_check_bloc.dart';
import 'package:gitcentral/features/maintenance/notifiers/maintenance_check_state.dart';
import 'package:gitcentral/features/maintenance/screens/maintenance_mode.page.dart';
import 'package:gitcentral/shared/services/global_messenger/global_messenger_event.dart';
import 'package:gitcentral/shared/services/global_messenger/global_messenger_service.dart';
import 'package:gitcentral/shared/utils/constants/constants.dart';
import 'package:gitcentral/shared/utils/custom_widgets/custom_snackbars.dart';
import 'package:gitcentral/shared/utils/helpers/debouncer.dart';

class MaintenanceCheck extends StatefulWidget {
  final Widget child;
  const MaintenanceCheck({
    super.key,
    required this.child,
  });

  @override
  State<MaintenanceCheck> createState() => _MaintenanceCheckState();
}

class _MaintenanceCheckState extends State<MaintenanceCheck> {
  final globalMessenger = GetIt.I<GlobalMessengerService>();

  @override
  void initState() {
    globalMessenger.messenger.stream.listen(
      (event) async {
        /// Regain internet or server restored
        if (event is OperationRestored && globalMessenger.isSnackbarShowing) {
          scaffoldKey.currentState?.clearSnackBars();
          globalMessenger.updateSnackbarStatus(false);
        }

        /// No internet
        if (event is NoNetwork) {
          scaffoldKey.currentState?.clearSnackBars();
          await debouncer();
          if (!mounted) return;
          scaffoldKey.currentState?.showSnackBar(
            showPersistentSnackbar(
              globalMessenger,
              context,
              'You have no internet connection.',
            ),
          );
          globalMessenger.updateSnackbarStatus(true);
        }

        /// Maintenance Mode
        if (event is MaintenanceEvent) {
          context.read<MaintenanceCheckBloc>().add(const MaintenanceMode());
        }
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<MaintenanceCheckBloc, MaintenanceCheckState>(
      listener: (context, state) {
        /// Force user's current page to this page when in maintenance mode
        if (state.status is MaintenanceMode) {
          Navigator.of(navigatorKey.currentContext!).popUntil(
            (route) => route.isFirst,
          );
        }
      },
      child: BlocBuilder<MaintenanceCheckBloc, MaintenanceCheckState>(
        builder: (context, state) {
          return Scaffold(
            body: Stack(
              children: [
                if (state.status is MaintenanceMode)
                  const MaintenanceModePage(),
                if (state.status is Operational) widget.child,
              ],
            ),
          );
        },
      ),
    );
  }
}
