import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gitcentral/features/maintenance/screens/maintenance_check.dart';
import 'package:gitcentral/features/theme/screen/theme_wrapper.dart';
import 'package:gitcentral/shared/interceptor/dio_interceptor.dart';
import 'package:gitcentral/shared/services/api_service/dio_config.dart';
import 'package:gitcentral/shared/services/storage/sharedpref_storage_service.dart';

import 'app.dart';

void main() async {
  final container = ProviderContainer();
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
    [
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ],
  );

  await dependencySetup(container);

  runApp(
    UncontrolledProviderScope(
      container: container,
      child: const ThemeWrapper(
        child: MaintenanceCheck(
          child: App(),
        ),
      ),
    ),
  );
}

Future<void> dependencySetup(ProviderContainer container) async {
  await container.read(sharedPrefsStorageServiceProvider).initStorage();
  final interceptor = container.read(dioInterceptorProvider);
  final logInterceptor = LogInterceptor(
    request: true,
    requestHeader: true,
    requestBody: false,
    error: true,
    responseHeader: false,
    responseBody: false,
  );

  dio.interceptors.addAll([
    interceptor,
    logInterceptor,
  ]);
}
