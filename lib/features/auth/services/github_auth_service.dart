import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gitcentral/shared/services/api_service/api_service.dart';
import 'package:gitcentral/shared/services/api_service/dio_api_service.dart';
import 'package:gitcentral/shared/services/api_service/dio_config.dart';
import 'package:gitcentral/shared/utils/constants/environment_config.dart';

final gitHubAuthProvider = Provider.autoDispose(
  (ref) {
    ref.keepAlive();
    return GitHubAuth(
      ref: ref,
      apiService: DioApiService(dio: dio),
    );
  },
);

class GitHubAuth {
  final Ref ref;
  final ApiService apiService;

  GitHubAuth({required this.ref, required this.apiService});

  String? getAuthUrl() {
    return '${EnvironmentConfig.authUrl}/login/oauth/authorize?client_id=${EnvironmentConfig.clientId}&redirect_uri=https://localhost:3000/success&scope=repo%20read:user';
  }

  void signIn() {}

  void signOut() {}
}
