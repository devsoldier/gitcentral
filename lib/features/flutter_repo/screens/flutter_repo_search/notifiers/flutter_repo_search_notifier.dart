// ignore: unused_import
import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gitcentral/features/flutter_repo/repository/services/flutter_repo_api_service.dart';
import 'package:gitcentral/features/flutter_repo/screens/flutter_repo_list/notifiers/flutter_repo_state.dart';
import 'package:gitcentral/features/flutter_repo/screens/flutter_repo_search/notifiers/flutter_repo_search_event.dart';

final flutterRepoSearchNotifierProvider =
    NotifierProvider.autoDispose<FlutterRepoSearchNotifier, FlutterRepoState>(
        FlutterRepoSearchNotifier.new);

class FlutterRepoSearchNotifier extends AutoDisposeNotifier<FlutterRepoState> {
  @override
  FlutterRepoState build() {
    return FlutterRepoState(status: const ApiInitial());
  }

  FlutterRepoApiService get apiService =>
      ref.read(flutterRepoApiServiceProvider);

  int initialPage = 1;

  Future<dynamic> mapEventsToState(FlutterRepoSearchEvent event) async {
    return event.map(
      searchRepo: (e) async => getSearchResult(e.query),
      fetchMoreItems: (e) async => fetchMoreItems(e.query),
    );
  }

  void getSearchResult(String? query) async {
    try {
      state = state.copyWith(status: const ApiLoading());
      final result =
          await apiService.getSearchResult(query: query, currentPage: 1);
      if (result.isSuccess) {
        state = state.copyWith(
          status: const ApiLoaded(),
          flutterRepoList: result.data?.items,
        );
      } else if (result.isFailure) {
        state = state.copyWith(status: const ApiServerError());
      } else {
        state = state.copyWith(status: const ApiOtherException());
      }
    } catch (e) {
      state = state.copyWith(status: const ApiOtherException());
    }
  }

  Future<({bool? result, String? errorMessage})> fetchMoreItems(
    String? query,
  ) async {
    try {
      final result = await apiService.getSearchResult(
        query: query,
        currentPage: initialPage += 1,
      );

      if ((result.data?.items ?? []).isEmpty) {
        return (result: null, errorMessage: null);
      }

      if (result.isSuccess) {
        state = state.copyWith(
          status: const ApiLoaded(),
          flutterRepoList:
              (state.flutterRepoList ?? []) + (result.data?.items ?? []),
        );
        return (result: true, errorMessage: null);
      } else if (result.isFailure) {
        return (result: false, errorMessage: 'Failed to fetch');
      } else {
        return (result: null, errorMessage: 'Something Went Wrong');
      }
    } catch (e) {
      return (result: null, errorMessage: 'Something Went Wrong');
    }
  }
}
