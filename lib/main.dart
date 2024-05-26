import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gitcentral/shared/interceptor/dio_interceptor.dart';
import 'package:gitcentral/shared/services/api_service/dio_config.dart';

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

  runApp(const App());
}

Future<void> dependencySetup(ProviderContainer container) async {
  final interceptor = container.read(dioInterceptorProvider);
  final logInterceptor = LogInterceptor(
    request: true,
    requestHeader: true,
    requestBody: false,
    error: true,
    responseHeader: false,
    responseBody: true,
  );

  dio.interceptors.addAll([
    interceptor,
    logInterceptor,
  ]);
}
