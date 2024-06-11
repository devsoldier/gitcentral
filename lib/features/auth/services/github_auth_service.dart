import 'dart:developer';

import 'package:gitcentral/shared/services/api_service/api_service.dart';
import 'package:gitcentral/shared/services/api_service/dio_config.dart';
import 'package:gitcentral/shared/services/storage/storage_service.dart';
import 'package:gitcentral/shared/utils/constants/constants.dart';
import 'package:gitcentral/shared/utils/constants/environment_config.dart';
import 'package:gitcentral/shared/utils/helpers/result.dart';

class GitHubAuthService {
  final ApiService apiService;
  final StorageService storageService;

  GitHubAuthService({required this.apiService, required this.storageService});

  String getAuthUrl() {
    return '${EnvironmentConfig.authUrl}/login/oauth/authorize?client_id=${EnvironmentConfig.clientId}&redirect_uri=$redirectUrl&prompt=consent';
  }

  Future<Result<String>> signIn(String? code) async {
    try {
      log('signIn');
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
        log('token ${response.data['access_token']}');
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
