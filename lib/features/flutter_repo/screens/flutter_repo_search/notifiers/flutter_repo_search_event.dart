import 'package:freezed_annotation/freezed_annotation.dart';

part 'flutter_repo_search_event.freezed.dart';

@freezed
abstract class FlutterRepoSearchEvent with _$FlutterRepoSearchEvent {
  const factory FlutterRepoSearchEvent.searchRepo({String? query}) = SearchRepo;
  const factory FlutterRepoSearchEvent.fetchMoreItems({String? query}) =
      FetchMoreItems;
}
