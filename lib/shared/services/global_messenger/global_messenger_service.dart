import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gitcentral/shared/services/global_messenger/global_messenger_event.dart';

final globalMessengerServiceProvider = Provider.autoDispose((ref) {
  ref.keepAlive();
  return GlobalMessengerService();
});

class GlobalMessengerService {
  bool isSnackbarShowing = false;
  final messenger = StreamController<GlobalMessengerEvent>.broadcast();

  void updateSnackbarStatus(bool show) {
    isSnackbarShowing = show;
  }
}
