import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get_it/get_it.dart';
import 'package:gitcentral/features/auth/services/github_auth_service.dart';
import 'package:gitcentral/features/flutter_repo/repository/services/flutter_repo_api_service.dart';
import 'package:gitcentral/features/maintenance/screens/maintenance_check.dart';
import 'package:gitcentral/features/theme/screen/theme_wrapper.dart';
import 'package:gitcentral/shared/interceptor/dio_interceptor.dart';
import 'package:gitcentral/shared/services/api_service/dio_api_service.dart';
import 'package:gitcentral/shared/services/api_service/dio_config.dart';
import 'package:gitcentral/shared/services/global_messenger/global_messenger_service.dart';
import 'package:gitcentral/shared/services/storage/sharedpref_storage_service.dart';

import 'app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
    [
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ],
  );

  await dependencySetup();

  runApp(
    const ThemeWrapper(
      child: MaintenanceCheck(
        child: App(),
      ),
    ),
  );
}

Future<void> dependencySetup() async {
  final storage = GetIt.I.registerSingleton<SharedPrefsStorageService>(
      SharedPrefsStorageService());

  final globalMessenger = GetIt.I
      .registerSingleton<GlobalMessengerService>(GlobalMessengerService());

  final interceptor = GetIt.I.registerSingleton<DioInterceptor>(
    DioInterceptor(
      storageService: storage,
      globalMessengerService: globalMessenger,
    ),
  );

  final dioApiService = DioApiService(dio: dio);

  GetIt.I.registerSingleton(
    GitHubAuthService(
      apiService: dioApiService,
      storageService: storage,
    ),
  );

  GetIt.I.registerSingleton(
    FlutterRepoApiService(
      apiService: dioApiService,
    ),
  );

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
