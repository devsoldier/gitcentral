import 'dart:async';

import 'package:gitcentral/shared/services/global_messenger/global_messenger_event.dart';

class GlobalMessengerService {
  bool isSnackbarShowing = false;
  final messenger = StreamController<GlobalMessengerEvent>.broadcast();

  void updateSnackbarStatus(bool show) {
    isSnackbarShowing = show;
  }
}
