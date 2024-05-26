import 'package:dio/dio.dart';
import 'package:gitcentral/shared/services/api_service/dio_config.dart';
import 'package:gitcentral/shared/utils/constants/environment_config.dart';

import 'api_service.dart';

class DioApiService extends ApiService {
  final Dio dio;
  final String baseUrl = EnvironmentConfig.apiUrl;
  final String authUrl = 'https://github.com';

  DioApiService({required this.dio});

  @override
  Future<Response> authRequest(
    RequestMethod method,
    String path, {
    Map<String, dynamic>? body,
  }) async {
    try {
      return await dio.request(
        '$authUrl$path',
        options: Options(method: method.toValue()),
        data: body,
      );
    } catch (e, s) {
      throw Exception('$e\n$s');
    }
  }

  @override
  Future<Response> makeRequest(
    RequestMethod method,
    String path, {
    Map<String, dynamic>? body,
  }) async {
    try {
      return await dio.request(
        '$baseUrl$path',
        options: Options(method: method.toValue()),
        data: body,
      );
    } catch (e, s) {
      throw Exception('$e\n$s');
    }
  }
}
