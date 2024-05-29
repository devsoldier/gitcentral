// ignore: unused_import
import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gitcentral/features/flutter_repo/repository/services/flutter_repo_api_service.dart';
import 'package:gitcentral/features/flutter_repo/screens/flutter_repo_list/notifiers/flutter_repo_state.dart';
import 'package:gitcentral/shared/utils/helpers/debouncer.dart';

final flutterRepoNotifierProvider =
    NotifierProvider.autoDispose<FlutterRepoNotifier, FlutterRepoState>(
        FlutterRepoNotifier.new);

class FlutterRepoNotifier extends AutoDisposeNotifier<FlutterRepoState> {
  @override
  FlutterRepoState build() {
    mapEventsToState(const InitialFetch());
    return FlutterRepoState();
  }

  FlutterRepoApiService get flutterRepo =>
      ref.read(flutterRepoApiServiceProvider);

  int initialPage = 1;

  dynamic mapEventsToState(FlutterRepoEvent event) {
    return event.map(
      initialFetch: (_) => initialFetch(),
      fetchMoreItems: (_) => fetchMoreItems(),
    );
  }

  void initialFetch() async {
    try {
      await debouncer();
      state = state.copyWith(status: const ApiLoading());
      final result = await flutterRepo.getFlutterRepoList(currentPage: 1);
      if (result.isSuccess) {
        state = state.copyWith(
          status: const ApiLoaded(),
          flutterRepoList: result.data,
        );
      } else if (result.isFailure) {
        state = state.copyWith(status: const ApiServerError());
      } else {
        state = state.copyWith(status: const ApiOtherException());
      }
    } catch (e, s) {
      state = state.copyWith(status: const ApiOtherException());
      throw Exception('initialFetch: $e\n$s');
    }
  }

  Future<({bool? result, String? errorMessage})> fetchMoreItems() async {
    try {
      final result =
          await flutterRepo.getFlutterRepoList(currentPage: initialPage += 1);

      if ((result.data ?? []).isEmpty) {
        return (result: null, errorMessage: null);
      }

      if (result.isSuccess) {
        state = state.copyWith(
          status: const ApiLoaded(),
          flutterRepoList: (state.flutterRepoList ?? []) + (result.data ?? []),
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
