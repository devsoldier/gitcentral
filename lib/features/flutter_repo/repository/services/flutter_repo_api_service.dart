import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gitcentral/features/flutter_repo/repository/data_classes/flutter_repo_response.dart';
import 'package:gitcentral/features/flutter_repo/repository/data_classes/pagination.dart';
import 'package:gitcentral/shared/services/api_service/api_service.dart';
import 'package:gitcentral/shared/services/api_service/dio_api_service.dart';
import 'package:gitcentral/shared/services/api_service/dio_config.dart';
import 'package:gitcentral/shared/utils/constants/constants.dart';
import 'package:gitcentral/shared/utils/helpers/result.dart';

final flutterRepoApiServiceProvider = Provider.autoDispose(
  (ref) {
    ref.keepAlive();
    return FlutterRepoApiService(ref: ref, apiService: DioApiService(dio: dio));
  },
);

class FlutterRepoApiService {
  final Ref ref;
  final ApiService apiService;

  FlutterRepoApiService({required this.ref, required this.apiService});

  Future<Result<List<FlutterRepoResponse>>> getFlutterRepoList({
    required int currentPage,
  }) async {
    try {
      final response = await apiService.makeRequest(
        RequestMethod.get,
        '/orgs/flutter/repos?per_page=$perPage&page$currentPage',
      );

      final parsedResponse = response.data
          .map<FlutterRepoResponse>((map) => FlutterRepoResponse.fromJson(map))
          .toList();

      if (response.statusCode == 200) {
        return Result.success(parsedResponse);
      } else {
        return Result.failure();
      }
    } catch (e, s) {
      log('getFlutterRepoList $e\n$s');
      return Result.exception();
    }
  }

  Future<Result<Pagination<FlutterRepoResponse>>> getSearchResult({
    String? query,
    required int currentPage,
  }) async {
    try {
      if (query == null || query.isEmpty) return Result.empty();
      final formattedQuery = query.replaceAll(' ', '+');
      final response = await apiService.makeRequest(
        RequestMethod.get,
        '/search/repositories?q=flutter/$formattedQuery+org:flutter&per_page=$perPage&page=$currentPage',
      );

      final parsedResponse = Pagination<FlutterRepoResponse>.fromJson(
          response.data,
          (json) => FlutterRepoResponse.fromJson(json as Map<String, dynamic>));

      if (response.statusCode == 200) {
        return Result.success(parsedResponse);
      } else {
        return Result.failure();
      }
    } catch (e, s) {
      log('getSearchResult $e\n$s');
      return Result.exception();
    }
  }
}
