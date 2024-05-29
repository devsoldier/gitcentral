import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gitcentral/features/flutter_repo/repository/data_classes/flutter_repo_response.dart';
part 'flutter_repo_state.freezed.dart';

@freezed
abstract class FlutterRepoState with _$FlutterRepoState {
  factory FlutterRepoState({
    @Default(ApiStatus.loading()) final ApiStatus? status,
    final List<FlutterRepoResponse>? flutterRepoList,
  }) = _FlutterRepoState;
}

@freezed
abstract class ApiStatus with _$ApiStatus {
  const factory ApiStatus.initial() = ApiInitial;
  const factory ApiStatus.loading() = ApiLoading;
  const factory ApiStatus.loaded() = ApiLoaded;
  const factory ApiStatus.serverError() = ApiServerError;
  const factory ApiStatus.otherException() = ApiOtherException;
}

@freezed
abstract class FlutterRepoEvent with _$FlutterRepoEvent {
  const factory FlutterRepoEvent.initialFetch() = InitialFetch;
  const factory FlutterRepoEvent.fetchMoreItems() = FetchMoreItems;
}
