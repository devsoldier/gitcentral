import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gitcentral/shared/services/api_service/api_service.dart';
import 'package:gitcentral/shared/services/api_service/dio_api_service.dart';
import 'package:gitcentral/shared/services/api_service/dio_config.dart';
import 'package:gitcentral/shared/services/storage/sharedpref_storage_service.dart';
import 'package:gitcentral/shared/services/storage/storage_service.dart';
import 'package:gitcentral/shared/utils/constants/constants.dart';
import 'package:gitcentral/shared/utils/constants/environment_config.dart';
import 'package:gitcentral/shared/utils/helpers/result.dart';

final gitHubAuthServiceProvider = Provider.autoDispose(
  (ref) {
    ref.keepAlive();
    return GitHubAuthService(
      ref: ref,
      apiService: DioApiService(dio: dio),
    );
  },
);

class GitHubAuthService {
  final Ref ref;
  final ApiService apiService;
  GitHubAuthService({required this.ref, required this.apiService});

  StorageService get storageService =>
      ref.read(sharedPrefsStorageServiceProvider);

  String getAuthUrl() {
    return '${EnvironmentConfig.authUrl}/login/oauth/authorize?client_id=${EnvironmentConfig.clientId}&redirect_uri=$redirectUrl&prompt=consent';
  }

  Future<Result<String>> signIn(String? code) async {
    try {
      final response = await apiService.authRequest(
        RequestMethod.post,
        '/login/oauth/access_token',
        body: {
          'client_id': EnvironmentConfig.clientId,
          'client_secret': EnvironmentConfig.clientKey,
          'code': code,
        },
      );

      if (response.statusCode == 200) {
        await storageService.setAccessToken(response.data['access_token']);
        return Result.success(response.data['access_token']);
      } else {
        return Result.failure();
      }
    } catch (e, s) {
      log('signIn: $e\n$s');
      return Result.exception();
    }
  }
}
