import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:gitcentral/features/flutter_repo/repository/services/flutter_repo_api_service.dart';
import 'package:gitcentral/features/flutter_repo/screens/flutter_repo_list/notifiers/flutter_repo_state.dart';
import 'package:gitcentral/features/flutter_repo/screens/flutter_repo_search/notifiers/flutter_repo_search_event.dart';

class FlutterRepoSearchBloc
    extends Bloc<FlutterRepoSearchEvent, FlutterRepoState> {
  final apiService = GetIt.I<FlutterRepoApiService>();

  int initialPage = 1;

  FlutterRepoSearchBloc()
      : super(FlutterRepoState(status: const ApiInitial())) {
    on<FlutterRepoSearchEvent>((event, emit) {});
    on<SearchRepo>(getSearchResult);
  }

  void getSearchResult(
    SearchRepo event,
    Emitter<FlutterRepoState> emit,
  ) async {
    try {
      emit(state.copyWith(status: const ApiLoading()));
      final result =
          await apiService.getSearchResult(query: event.query, currentPage: 1);
      if (result.isSuccess) {
        emit(state.copyWith(
          status: const ApiLoaded(),
          flutterRepoList: result.data?.items,
        ));
      } else if (result.isFailure) {
        emit(state.copyWith(status: const ApiServerError()));
      } else {
        emit(state.copyWith(status: const ApiOtherException()));
      }
    } catch (e) {
      emit(state.copyWith(status: const ApiOtherException()));
    }
  }

  Future<void> fetchMoreItems(
    FetchMoreSearchItems event,
    Emitter<FlutterRepoState> emit,
  ) async {
    try {
      emit(state.copyWith(fetchStatus: const ApiLoading()));

      final result = await apiService.getSearchResult(
        query: event.query,
        currentPage: initialPage += 1,
      );

      if ((result.data?.items ?? []).isEmpty) {
        emit(state.copyWith(fetchStatus: const ApiLoaded()));
      }

      if (result.isSuccess) {
        emit(
          state.copyWith(
            status: const ApiLoaded(),
            fetchStatus: const ApiLoaded(),
            flutterRepoList:
                (state.flutterRepoList ?? []) + (result.data?.items ?? []),
          ),
        );
      } else if (result.isFailure) {
        emit(
          state.copyWith(
              fetchStatus: const ApiServerError(),
              errorMessage: 'Failed to fetch'),
        );
      } else {
        emit(
          state.copyWith(
              fetchStatus: const ApiOtherException(),
              errorMessage: 'Something Went Wrong'),
        );
      }
    } catch (e) {
      emit(
        state.copyWith(
            fetchStatus: const ApiOtherException(),
            errorMessage: 'Something Went Wrong'),
      );
    }
  }
}
